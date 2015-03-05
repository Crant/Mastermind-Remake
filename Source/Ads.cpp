#include "Ads.h"
#include "s3eTimer.h"

CDECLARE_SINGLETONS(Ads);

void Ads::Init()
{
	if(CGAdMobAvailable())
	{
		//Set up both Ad spot keys.
		SetGoogleAppKey("ca-app-pub-3486822110039240/3494030387", "ca-app-pub-3486822110039240/1250731188");
		SetGoogleAppKey("<bannerAdId>", "<Interstatial>");
	
		//Add the device hash id so that you recieve test ads on your test device.
		//Unfortunately this version requires it.
		TestDeviceHashedId("12345");

		//Optional but not tested without: Specify the position of the ad.
		BannerAdPosition(CG_ADMOB_POSITION_TOP);
		//BannerAdPosition(CG_ADMOB_POSITION_BOTTOM);

		//(Android Only) Optional: Specify the ad size. Default Smart Size.
		//BannerAdSize(CG_ADMOB_320x100);

		//Optional: Register callbacks:
		CGAdMobRegister(CG_ADMOB_CALLBACK_INTERSTITIALWILLDISMISS, OnAdMobWillDismiss, this);
		CGAdMobRegister(CG_ADMOB_CALLBACK_INTERSTITIALWILLPRESENT, OnAdMobPresent, this);
		CGAdMobRegister(CG_ADMOB_CALLBACK_INTERSTITIALRECEIVED, OnAdMobRecieve, this);
		CGAdMobRegister(CG_ADMOB_CALLBACK_INTERSTITIALFAILED, OnAdMobFailed, this);
		CGAdMobRegister(CG_ADMOB_CALLBACK_INTERSTITIALDISMISS, OnAdMobDismiss, this);
		CGAdMobRegister(CG_ADMOB_CALLBACK_INTERSTITIALLEAVEAPP, OnAdLeaveApp, this);
	
		//Required: Set up the views.
		InitAdView();
		//Call this once to show banner ad. 
		//And if you have not specified a refresh interval, 
		//call it every time you need to refresh the banner ad.
		BannerAdLoad();

		//Timer to load the next one.
		s3eTimerSetTimer(5000, _ad, NULL);
	}
}

void Ads::Release()
{
	CGAdMobUnRegister(CG_ADMOB_CALLBACK_INTERSTITIALWILLDISMISS, OnAdMobWillDismiss);
	CGAdMobUnRegister(CG_ADMOB_CALLBACK_INTERSTITIALWILLPRESENT, OnAdMobPresent);
	CGAdMobUnRegister(CG_ADMOB_CALLBACK_INTERSTITIALRECEIVED, OnAdMobRecieve);
	CGAdMobUnRegister(CG_ADMOB_CALLBACK_INTERSTITIALFAILED, OnAdMobFailed);
	CGAdMobUnRegister(CG_ADMOB_CALLBACK_INTERSTITIALDISMISS, OnAdMobDismiss);
	CGAdMobUnRegister(CG_ADMOB_CALLBACK_INTERSTITIALLEAVEAPP, OnAdLeaveApp);
}

int32 Ads::_ad(void *systemData, void *userData)
{
	BannerAdLoad();
	ShowInterstitialAd();
	s3eTimerSetTimer(30000, _ad, NULL);

	return 0;
}

int32 Ads::OnAdMobWillDismiss( void *systemData, void *userData )
{
	return 0;
}

int32 Ads::OnAdMobPresent( void *systemData, void *userData )
{
	return 0;
}

int32 Ads::OnAdMobRecieve( void *systemData, void *userData )
{
	return 0;
}

int32 Ads::OnAdMobFailed( void *systemData, void *userData )
{
	return 0;
}

int32 Ads::OnAdMobDismiss( void *systemData, void *userData )
{
	return 0;
}

int32 Ads::OnAdLeaveApp( void *systemData, void *userData )
{
	return 0;
}

void Ads::Show()
{
	BannerAdShow();
}

void Ads::Hide()
{
	BannerAdHide();
}
