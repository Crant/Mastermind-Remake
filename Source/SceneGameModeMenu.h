#pragma once

#include "Scene.h"

class GameModeMenu : public Scene
{
private:
	Iw2DSceneGraph::CSprite* zSinglePlayerButton;
	Iw2DSceneGraph::CSprite* zMultiPlayerButton;

	Iw2DSceneGraph::CLabel* zSinglePlayerLabel;
	Iw2DSceneGraph::CLabel* zMultiPlayerLabel;
public:
	GameModeMenu();
	~GameModeMenu();

	virtual void Init();

	virtual void Update( float pDeltaTime = 0.0f, float pAlphaMul = 1.0f );

	virtual void Render();

	virtual void OnBackKeyPress();

	virtual void OnPause();

	virtual void OnResume();

};