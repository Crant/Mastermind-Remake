#include "Mastermind.h"
#include "Resource.h"
#include "SceneGame.h"
#include "SceneMainMenu.h"
#include "ScenePauseMenu.h"
#include "SceneHighscoreScreen.h"

Mastermind::Mastermind()
{
	this->zInput = 0;
	this->zSceneManager = 0;
	this->zGlobalTweener = 0;
}

Mastermind::~Mastermind()
{
	FreeInput();
	FreeResource();
	FreeSceneManager();
	
	if(this->zGlobalTweener)
		delete this->zGlobalTweener;
}

void Mastermind::Init()
{
	//Set up Input System
	InputInit();
	//Set up Scene Manager
	SceneManagerInit();
	//Set up Resources
	ResourceInit();
	
	this->zGlobalTweener = new CTweenManager();

	this->zInput = GetInput();
	this->zSceneManager = GetSceneManager();

	Game* game = new Game();
	game->SetName("game");
	game->Init();
	game->SetGlobalTween(this->zGlobalTweener);
	game->New_Game();
	this->zSceneManager->Add(game);

	MainMenu* mainmenu = new MainMenu();
	mainmenu->SetName("mainmenu");
	mainmenu->Init();
	mainmenu->SetGlobalTween(this->zGlobalTweener);
	this->zSceneManager->Add(mainmenu);

	PauseMenu* pausemenu = new PauseMenu();
	pausemenu->SetName("pausemenu");
	pausemenu->Init();
	pausemenu->SetGlobalTween(this->zGlobalTweener);
	this->zSceneManager->Add(pausemenu);

	HighscoreScreen* highscoreScreen = new HighscoreScreen();
	highscoreScreen->SetName("highscore");
	highscoreScreen->Init();
	highscoreScreen->SetGlobalTween(this->zGlobalTweener);
	this->zSceneManager->Add(highscoreScreen);

	this->zSceneManager->SwitchTo(mainmenu);
}

void Mastermind::Run()
{
	s3eDeviceRegister(S3E_DEVICE_PAUSE, (s3eCallback)PauseCallback, NULL);
	s3eDeviceRegister(S3E_DEVICE_UNPAUSE, (s3eCallback)ResumeCallback, NULL);

	uint32 timer = (uint32)s3eTimerGetMs();

	// Loop forever, until the user or the OS performs some action to quit the app
	while(!s3eDeviceCheckQuitRequest() && 
		!GetSceneManager()->QuitRequested())
	{
		this->zInput->Update();

		if(GetInput()->GetBackKeyStatus())
		{
			GetSceneManager()->OnBackButtonPressed();
		}
		if(GetInput()->GetHomeKeyStatus())
		{
			GetSceneManager()->QuitGame();
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

		this->zSceneManager->Render();

		// Show the drawing surface
		Iw2DSurfaceShow();

		// Yield to OS
		s3eDeviceYield(0);
	}
}

void Mastermind::Update( int delta )
{
	this->zGlobalTweener->Update(delta / 1000.0f);

	this->zSceneManager->Update(delta / 1000.0f);
}

void Mastermind::PauseCallback( void* systemData, void* userData )
{
	GetSceneManager()->OnPause();
}

void Mastermind::ResumeCallback( void* systemData, void* userData )
{
	GetSceneManager()->OnResume();
}