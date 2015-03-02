#pragma once

#include "Scene.h"

class HighscoreScreen : public Scene
{
private:
	Iw2DSceneGraph::CLabel* zRoundTitle;
	Iw2DSceneGraph::CLabel* zTimeTitle;
	Iw2DSceneGraph::CLabel* zRoundLabel[10];
	Iw2DSceneGraph::CLabel* zTimeLabel[10];

	Iw2DSceneGraph::CSprite* zBackButton;
	Iw2DSceneGraph::CSprite* zResetButton;
	Iw2DSceneGraph::CLabel*  zBackButtonLabel;
	Iw2DSceneGraph::CLabel*  zResetButtonLabel;
public:
	HighscoreScreen();
	~HighscoreScreen();

	// Initialize the Game
	void Init();

	//Update the Game
	void Update(float pDeltaTime /* = 0.0f */, float pAlphaMul /* = 1.0f */);

	//Render the game
	void Render();

	static void ExitHighscore( CTween* pTween );
	static void ResetScore(CTween* pTween);

	virtual void OnBackKeyPress();

	virtual void OnPause();

	virtual void OnResume();

};