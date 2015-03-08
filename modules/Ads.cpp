#include "Ads.h"
#include "IwGameInput.h"
#include "IwGameAdsView.h"
#include "IwGameAdsMediator.h"
#include "IwGameAdsViewAnimator.h"

CDECLARE_SINGLETONS(Ads);

void Ads::Init()
{
	// Init http manager
	CIwGameHttpManager::Create();
	IW_GAME_HTTP_MANAGER->Init();

	// Initialise the input system
	CIwGameInput::Create();
	IW_GAME_INPUT->Init();

	// Create ad view
	CIwGameAdsView::Create();

	// Initialise with Application ID (yuo get this from your ad provider)
	IW_GAME_ADS_VIEW->Init("11828");

	// Set ad provider
	IW_GAME_ADS_VIEW->setAdProvider(CIwGameAds::AdModa);

	IW_GAME_ADS_VIEW->setSlotSize(this->GetSlotSize());

	// Set ad request interval in seconds
	IW_GAME_ADS_VIEW->setNewAdInterval(30);

	// Force a request for an initial ad
	IW_GAME_ADS_VIEW->RequestNewAd(CIwGameAds::AdModa);

	// Set total number of ads visible in te ads view
	IW_GAME_ADS_VIEW->setNumAdsVisible(1);

	// Tell animators to loop
	IW_GAME_ADS_VIEW->setLooped(true);

	//InitAnimator();

	// Set the ads view position
	IW_GAME_ADS_VIEW->setPosition(0, IwGxGetScreenWidth() / 2, 20);

	//InitAdsMediator();
}

void Ads::InitAdsMediator()
{
	// Create ad mediator and attach it to the ads system
	CIwGameAdsMediator* ad_mediator = new CIwGameAdsMediator();
	IW_GAME_ADS->setMediator(ad_mediator);

	// Create inner-active ad party and ad it to the mediator
	CIwGameAdsParty* party = new CIwGameAdsParty();
	//party->AndroidAppID = "Put your ID here";
	//party->Provider = CIwGameAds::InnerActive;
	//ad_mediator->addAdParty(party);

	// Create Adfonic ad party and ad it to the mediator
	//party = new CIwGameAdsParty();
	//party->ApplicationID = "Put your ID here";
	//party->Provider = CIwGameAds::AdFonic;
	//ad_mediator->addAdParty(party);

	// Create Vserv ad party and ad it to the mediator
	party = new CIwGameAdsParty();
	party->AndroidAppID = "842f4188";
	party->Provider = CIwGameAds::VServ;
	ad_mediator->addAdParty(party);

	// Create Mojiva ad party and ad it to the mediator
	party = new CIwGameAdsParty();
	party->AndroidAppID = "d1ba6188";
	party->Provider = CIwGameAds::Mojiva;
	ad_mediator->addAdParty(party);

	// Create MillennialMedia ad party and ad it to the mediator
	//party = new CIwGameAdsParty();
	//party->ApplicationID = "Put your ID here";
	//party->Provider = CIwGameAds::MillennialMedia;
	//ad_mediator->addAdParty(party);

	// Create AdModa ad party and ad it to the mediator
	//party = new CIwGameAdsParty();
	//party->ApplicationID = "Put your ID here";
	//party->Provider = CIwGameAds::AdModa;
	//ad_mediator->addAdParty(party);
}

void Ads::Release()
{
	// Shut down http manager
	IW_GAME_HTTP_MANAGER->Release();
	CIwGameHttpManager::Destroy();

	// Shut down the input system
	IW_GAME_INPUT->Release();
	CIwGameInput::Destroy();

	// Clean up ads system
	IW_GAME_ADS_VIEW->Release();
	CIwGameAdsView::Destroy();
}

void Ads::Update()
{
	if(IW_GAME_HTTP_MANAGER != NULL)
	{
		IW_GAME_HTTP_MANAGER->Update();
	}

	// Update the ads view
	IW_GAME_ADS_VIEW->Update(1.0f);
}

void Ads::Draw()
{
	IW_GAME_ADS_VIEW->Draw();
}

void Ads::InitAnimator()
{
	// Create and attach an animator that fades the ad in over 1 second, pauses for 7
	// seconds and then fades the ad back out
	CIwGameAdsViewAnimator* anim = new CIwGameAdsViewAnimator();
	int width = IwGxGetScreenWidth() / 2;
	int height = IwGxGetScreenHeight() / 2;
	anim->Init();
	anim->setAdViewDataIndex(0);
	anim->setCanvasSize(width, height);
	anim->setInAnim(CIwGameAdsViewAnimator::AnimFadeIn, 1000);
	anim->setOutAnim(CIwGameAdsViewAnimator::AnimFadeOut, 1000);
	anim->setStayDuration(7000);
	IW_GAME_ADS_VIEW->addAnimator(0, anim);
}

CIwGameAds::eSlotSize Ads::GetSlotSize()
{
	int width = IwGxGetScreenWidth();
	
	if(width > 320)
		return CIwGameAds::s728x90;
	else if(width > 300)
		return CIwGameAds::s320x50;
	else if(width > 216)
		return CIwGameAds::s300x50;
	else if(width > 168)
		return CIwGameAds::s216x36;
	else
		return CIwGameAds::s168x28;

}