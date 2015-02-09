#pragma once

#include "Iw2DSceneGraph.h"

class Button
{
private:
	Iw2DSceneGraph::CSprite* zButtonSprite;
	Iw2DSceneGraph::CLabel* zLabel;

public:
	Button(Iw2DSceneGraph::CSprite* pButton = 0, Iw2DSceneGraph::CLabel* pLabel = 0);
	~Button();

	void Update(float pDeltaTime, float pAlphaMul);
	void Render();

	Iw2DSceneGraph::CSprite* GetButton() {return this->zButtonSprite;}
	Iw2DSceneGraph::CLabel*  GetLabel()	 {return this->zLabel;}

};