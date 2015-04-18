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

private:
	void CreateTimeText(const int& hour, const int& minute, const int& seconds, std::string& text);

public:
	HighscoreScreen();
	~HighscoreScreen();

	// Initialize the Game
	void Init();

	//Update the Game
	void Update(float pDeltaTime /* = 0.0f */, float pAlphaMul /* = 1.0f */);

	//Render the game
	void Render();

	virtual void OnBackKeyPress();

	virtual void OnPause();

	virtual void OnResume();

	virtual void OnSwap();

};