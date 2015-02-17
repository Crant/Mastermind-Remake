#pragma once

#include "Scene.h"

class HighscoreScreen : public Scene
{
private:
	Scene* zPrevScene;
	Iw2DSceneGraph::CLabel* zRoundTitle;
	Iw2DSceneGraph::CLabel* zTimeTitle;
	Iw2DSceneGraph::CLabel* zRoundLabel[10];
	Iw2DSceneGraph::CLabel* zTimeLabel[10];

	Iw2DSceneGraph::CSprite* zBackButton;
	Iw2DSceneGraph::CLabel*  BackButtonLabel;
public:
	HighscoreScreen();
	~HighscoreScreen();

	// Initialize the Game
	void Init();

	//Update the Game
	void Update(float pDeltaTime /* = 0.0f */, float pAlphaMul /* = 1.0f */);

	//Render the game
	void Render();

	void SetPreviousScene(Scene* pScene) {this->zPrevScene = pScene;}
	Scene* GetPreviousScene() {return this->zPrevScene;}
	static void ExitHighscore( CTween* pTween );
};