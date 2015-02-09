#pragma once

#include "IwTween.h"
#include "Input.h"
#include "Audio.h"
#include "Scene.h"

class Mastermind
{
private:
	SceneManager*	zSceneManager;
	Input*			zInput;
	Audio*			zAudio;
	CTweenManager*	zGlobalTweener;
public:
	Mastermind();
	~Mastermind();

	void Init();

	void Run();
	void Update();
};