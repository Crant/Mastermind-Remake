#pragma once

#include "Scene.h"

class MainMenu : public Scene
{
private:
	Iw2DSceneGraph::CSprite* zStartGameButton;
	Iw2DSceneGraph::CSprite* zExitButton;
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
};