#pragma once

#include "ClassUtil.h"
#include "IwGameAds.h"

#define ADVERT_MANAGER Ads::GetInstance()

class Ads
{
	CDEFINE_SINGLETONS(Ads)
private:
	void InitAdsMediator();
	void InitAnimator();

	CIwGameAds::eSlotSize GetSlotSize();
public:
	void Init();

	void Update();

	void Draw();

	void Release();
};