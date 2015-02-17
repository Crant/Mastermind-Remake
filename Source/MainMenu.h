#pragma once

#include "Scene.h"

class MainMenu : public Scene
{
private:
	Iw2DSceneGraph::CSprite* zStartGameButton;
	Iw2DSceneGraph::CSprite* zHighscoreButton;
	Iw2DSceneGraph::CSprite* zExitButton;
	Iw2DSceneGraph::CLabel*  zHighscoreLabel;
public:
	MainMenu();
	~MainMenu();

	// Initialize the Game
	void Init();

	//Update the Game
	void Update(float pDeltaTime /* = 0.0f */, float pAlphaMul /* = 1.0f */);

	//Render the game
	void Render();
	static void StartGame(CTween* pTween);
	static void ExitGame(CTween* pTween);
	static void ShowHighscore(CTween* pTween);
};