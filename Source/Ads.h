#pragma once

#include "ClassUtil.h"

#define ADVERT_MANAGER Ads::GetInstance()

class Ads
{
	CDEFINE_SINGLETONS(Ads)
private:
	void InitAdsMediator();
	void InitAnimator();
public:
	void Init();

	void Update();

	void Draw();

	void Release();
};