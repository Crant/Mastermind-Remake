#include "Button.h"

using namespace Iw2DSceneGraph;

Button::Button(CSprite* pButton, CLabel* pLabel)
{
	this->zButtonSprite = pButton;
	this->zLabel = pLabel;
}

Button::~Button()
{
	if(this->zButtonSprite)
		delete this->zButtonSprite;

	if(this->zLabel)
		delete this->zLabel;
}

void Button::Update( float pDeltaTime, float pAlphaMul )
{
	if(this->zButtonSprite)
		this->zButtonSprite->Update(pDeltaTime, pAlphaMul);

	if(this->zLabel)
		this->zLabel->Update(pDeltaTime, pAlphaMul);
}

void Button::Render()
{
	if(this->zButtonSprite)
		this->zButtonSprite->Render();

	if(this->zLabel)
		this->zLabel->Render();
}