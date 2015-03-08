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
	static int32 OnAdMobWillDismiss(void *systemData, void *userData);
	static int32 OnAdMobPresent(void *systemData, void *userData);
	static int32 OnAdMobRecieve(void *systemData, void *userData);
	static int32 OnAdMobFailed(void *systemData, void *userData);
	static int32 OnAdMobDismiss(void *systemData, void *userData);
	static int32 OnAdLeaveApp(void *systemData, void *userData);
};