#pragma once

#include "ClassUtil.h"
#include "CGAdMob.h"
#define ADVERT_MANAGER Ads::GetInstance()

class Ads
{
	CDEFINE_SINGLETONS(Ads)
public:
	void Init();

	void Update();

	void Show();

	void Hide();

	void Cleanup();

	static int32 _ad(void *systemData, void *userData);
};