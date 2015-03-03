#pragma once

#include "IwTween.h"
#include "Input.h"
#include "Scene.h"

class Mastermind
{
private:
	CTweenManager*	zGlobalTweener;
public:
	Mastermind();
	~Mastermind();

	void Init();

	void Run();
	void Update(int delta);

	static void PauseCallback(void* systemData, void* userData);
	static void ResumeCallback(void* systemData, void* userData);
};