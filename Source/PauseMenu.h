#pragma once

#include "Scene.h"
#include "Button.h"

class PauseMenu : public Scene
{
private:
	Iw2DSceneGraph::CSprite* zNewGameButton;
	Iw2DSceneGraph::CSprite* zResumeGameButton;
	Iw2DSceneGraph::CSprite* zExitGameButton;
public:
	PauseMenu();
	~PauseMenu();

	// Initialize the Game
	void Init();

	//Update the Game
	void Update(float pDeltaTime /* = 0.0f */, float pAlphaMul /* = 1.0f */);

	//Render the game
	void Render();

	static void NewGame(CTween* pTween);

	static void ResumeGame(CTween* pTween);
	static void ExitGame(CTween* pTween);
};