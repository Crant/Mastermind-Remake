#pragma once

#include "Scene.h"

class MainMenu : public Scene
{
private:
	//Iw2DSceneGraph::CSprite* zStartGameButton;
	Iw2DSceneGraph::CSprite* zHighscoreButton;
	Iw2DSceneGraph::CSprite* zExitButton;
	//Iw2DSceneGraph::CSprite* zOptionsButton;
	Iw2DSceneGraph::CLabel*  zHighscoreLabel;

	Iw2DSceneGraph::CSprite* zSinglePlayerButton;
	Iw2DSceneGraph::CSprite* zMultiPlayerButton;

	Iw2DSceneGraph::CLabel* zSinglePlayerLabel;
	Iw2DSceneGraph::CLabel* zMultiPlayerLabel;
public:
	MainMenu();
	~MainMenu();

	// Initialize the Game
	virtual void Init();

	//Update the Game
	virtual void Update(float pDeltaTime /* = 0.0f */, float pAlphaMul /* = 1.0f */);

	//Render the game
	virtual void Render();

	static void StartGame(CTween* pTween);
	static void ExitGame(CTween* pTween);
	static void ShowHighscore(CTween* pTween);
	static void ShowOptions(CTween* pTween);

	virtual void OnBackKeyPress();

	virtual void OnPause();

	virtual void OnResume();

};