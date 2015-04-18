#pragma once

#include "Scene.h"
#include "Image.h"

class HelpScreen : public Scene
{
private:
	Image* zBackButton;
public:
	HelpScreen();
	~HelpScreen();

	virtual void OnBackKeyPress();

	virtual void OnPause();

	virtual void OnResume();

	virtual void OnSwap();

	virtual void Init();

	virtual void Update( float pDeltaTime = 0.0f, float pAlphaMul = 1.0f );

	virtual void Render();
};