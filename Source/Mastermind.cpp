#include "Mastermind.h"
#include "Resource.h"
#include "SceneHelp.h"
#include "SceneGame.h"
#include "SceneMainMenu.h"
#include "ScenePauseMenu.h"
#include "SceneHighscoreScreen.h"
#include "Input.h"
#include "Ads.h"
#include "s3eFlurry.h"

Mastermind::Mastermind()
{
	this->zGlobalTweener = 0;
}

Mastermind::~Mastermind()
{
	if(s3eFlurryAvailable())
		s3eFlurryEndSession();

	INPUT_MANAGER->Release();
	Input::Destroy();

	SCENE_MANAGER->Release();
	SceneManager::Destroy();

	RESOURCE_MANAGER->Release();
	Resource::Destroy();
	
	ADVERT_MANAGER->Cleanup();
	Ads::Destroy();

	SAFE_DELETE(this->zGlobalTweener);

	s3eDeviceUnRegister(S3E_DEVICE_PAUSE, (s3eCallback)PauseCallback);
	s3eDeviceUnRegister(S3E_DEVICE_UNPAUSE, (s3eCallback)ResumeCallback);
}

void Mastermind::Init()
{
	//Set up Input System
	Input::Create();
	INPUT_MANAGER->Init();
	//Set up Scene Manager
	SceneManager::Create();
	SCENE_MANAGER->Init();
	//Set up Resources
	Resource::Create();
	RESOURCE_MANAGER->Init();
	//Set up Adverts
	Ads::Create();
	ADVERT_MANAGER->Init();
	
	if (s3eDeviceGetInt(S3E_DEVICE_OS) == S3E_OS_ID_ANDROID)
	{
		if(s3eFlurryAvailable())
			s3eFlurryStartSession("B2M7Y8NKB67QDCKBRDG5");
	}

	this->zGlobalTweener = new CTweenManager();

	Game* game = new Game();
	game->SetName("game");
	game->Init();
	game->SetGlobalTween(this->zGlobalTweener);
	SCENE_MANAGER->Add(game);

	MainMenu* mainmenu = new MainMenu();
	mainmenu->SetName("mainmenu");
	mainmenu->Init();
	mainmenu->SetGlobalTween(this->zGlobalTweener);
	SCENE_MANAGER->Add(mainmenu);

	PauseMenu* pausemenu = new PauseMenu();
	pausemenu->SetName("pausemenu");
	pausemenu->Init();
	pausemenu->SetGlobalTween(this->zGlobalTweener);
	SCENE_MANAGER->Add(pausemenu);

	HighscoreScreen* highscoreScreen = new HighscoreScreen();
	highscoreScreen->SetName("highscore");
	highscoreScreen->Init();
	highscoreScreen->SetGlobalTween(this->zGlobalTweener);
	SCENE_MANAGER->Add(highscoreScreen);

	HelpScreen* helpScreen = new HelpScreen();
	helpScreen->SetName("help");
	helpScreen->Init();
	helpScreen->SetGlobalTween(this->zGlobalTweener);
	SCENE_MANAGER->Add(helpScreen);

	SCENE_MANAGER->SwitchTo(mainmenu);

	s3eDeviceRegister(S3E_DEVICE_PAUSE, (s3eCallback)PauseCallback, NULL);
	s3eDeviceRegister(S3E_DEVICE_UNPAUSE, (s3eCallback)ResumeCallback, NULL);
}

void Mastermind::Run()
{
	uint32 timer = (uint32)s3eTimerGetMs();

	// Loop forever, until the user or the OS performs some action to quit the app
	while(!s3eDeviceCheckQuitRequest() && 
		!SCENE_MANAGER->QuitRequested())
	{
		INPUT_MANAGER->Update();

		if(INPUT_MANAGER->GetBackKeyStatus())
		{
			SCENE_MANAGER->OnBackButtonPressed();
		}
		if(INPUT_MANAGER->GetHomeKeyStatus())
		{
			SCENE_MANAGER->QuitGame();
		}

		int deltaTime = uint32(s3eTimerGetMs()) - timer;
		timer += deltaTime;

		//Make sure the delta time is safe
		if(deltaTime < 0)
			deltaTime = 0;
		if(deltaTime > 100)
			deltaTime = 100;

		this->Update(deltaTime);

		// Clear the drawing surface
		Iw2DSurfaceClear(0xff000000);

		SCENE_MANAGER->Render();

		// Show the drawing surface
		Iw2DSurfaceShow();

		// Yield to OS
		s3eDeviceYield(0);
	}
}

void Mastermind::Update( int delta )
{
	this->zGlobalTweener->Update(delta / 1000.0f);

	SCENE_MANAGER->Update(delta / 1000.0f);
}

void Mastermind::PauseCallback( void* systemData, void* userData )
{
	SCENE_MANAGER->OnPause();
}

void Mastermind::ResumeCallback( void* systemData, void* userData )
{
	SCENE_MANAGER->OnResume();
}