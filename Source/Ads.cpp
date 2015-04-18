#include "Ads.h"
#include "s3eTimer.h"

CDECLARE_SINGLETONS(Ads);

void Ads::Init()
{
	if(CGAdMobAvailable())
	{
		//Set up both Ad spot keys.
		SetGoogleAppKey("ca-app-pub-6565032109732167/2448052735", "ca-app-pub-6565032109732167/2448052735");//, "ca-app-pub-6565032109732167/8354985532");
	
		//Add the device hash id so that you recieve test ads on your test device.
		//Unfortunately this version requires it.
		TestDeviceHashedId("12345");
		
		//Required: Set up the views.
		InitAdView();

		//Optional but not tested without: Specify the position of the ad.
		BannerAdPosition(CG_ADMOB_POSITION_TOP);
	
		//Call this once to show banner ad. 
		//And if you have not specified a refresh interval, 
		//call it every time you need to refresh the banner ad.
		BannerAdLoad();
		
		//Timer to load the next one.
		s3eTimerSetTimer(3000, _ad, NULL);
	}
}

void Ads::Cleanup()
{
	if(CGAdMobAvailable())
	{
		Release();
	}
}

int32 Ads::_ad(void *systemData, void *userData)
{
	BannerAdLoad();
	//ShowInterstitialAd();
	s3eTimerSetTimer(30000, _ad, NULL);

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