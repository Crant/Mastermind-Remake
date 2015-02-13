#include "Mastermind.h"
#include "Resource.h"
#include "Game.h"
#include "MainMenu.h"
#include "PauseMenu.h"

// FRAME_TIME is the amount of time that a single frame should last in seconds
#define FRAME_TIME  (30.0f / 1000.0f)

Mastermind::Mastermind()
{
	this->zAudio = 0;
	this->zInput = 0;
	this->zSceneManager = 0;
}

Mastermind::~Mastermind()
{
	FreeAudio();
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
	//Set up Audio System
	AudioInit();
	//Set up Scene Manager
	SceneManagerInit();
	//Set up Resources
	ResourceInit();

	this->zAudio = GetAudio();
	this->zInput = GetInput();
	this->zSceneManager = GetSceneManager();

	this->zGlobalTweener = new CTweenManager();

	Game* game = new Game();
	game->SetName("game");
	game->SetGlobalTween(this->zGlobalTweener);
	game->Init();
	this->zSceneManager->Add(game);
	game->New_Game();

	MainMenu* mainmenu = new MainMenu();
	mainmenu->SetName("mainmenu");
	mainmenu->SetGlobalTween(this->zGlobalTweener);
	mainmenu->Init();
	this->zSceneManager->Add(mainmenu);

	PauseMenu* pausemenu = new PauseMenu();
	pausemenu->SetName("pausemenu");
	pausemenu->SetGlobalTween(this->zGlobalTweener);
	pausemenu->Init();
	this->zSceneManager->Add(pausemenu);

	this->zSceneManager->SwitchTo(mainmenu);
}

void Mastermind::Run()
{
	// Play some background music
	//this->zAudio->PlayMusic("audio/frontend.mp3", true);

	// Loop forever, until the user or the OS performs some action to quit the app
	while(!s3eDeviceCheckQuitRequest() && 
		!GetInput()->GetHomeKeyStatus())
	{
		uint64 new_time = s3eTimerGetMs();

		this->Update();

		// Clear the drawing surface
		Iw2DSurfaceClear(0xff000000);

		this->zSceneManager->Render();

		// Show the drawing surface
		Iw2DSurfaceShow();

		uint64 time = s3eTimerGetMs();
		// Lock frame rate
		int yield = (int)(FRAME_TIME * 1000 - (time - new_time));
		if (yield < 0)
			yield = 0;
		// Yield to OS
		s3eDeviceYield(yield);
	}
}

void Mastermind::Update()
{
	this->zAudio->Update();

	this->zInput->Update();

	this->zGlobalTweener->Update(FRAME_TIME);

	this->zSceneManager->Update(FRAME_TIME);
}