#include "SceneHelp.h"
#include "SceneGame.h"
#include "Input.h"
#include "IwGx.h"
#include "Resource.h"
#include "Ads.h"

using namespace Iw2DSceneGraph;

HelpScreen::HelpScreen()
{

}

HelpScreen::~HelpScreen()
{

}

void HelpScreen::Init()
{
	Scene::Init();

	CSprite* bg = new CSprite();
	bg->m_X = (float)IwGxGetScreenWidth() / 2;
	bg->m_Y = (float)IwGxGetScreenHeight() / 2;
	bg->SetImage(RESOURCE_MANAGER->GetHelpBG());
	bg->m_W = bg->GetImage()->GetWidth();
	bg->m_H = bg->GetImage()->GetHeight();
	bg->m_AnchorX = 0.5f;
	bg->m_AnchorY = 0.5f;
	// Fit background to screen size
	bg->m_ScaleX = (float)IwGxGetScreenWidth() / bg->GetImage()->GetWidth();
	bg->m_ScaleY = (float)IwGxGetScreenHeight() / bg->GetImage()->GetHeight();

	AddChild(bg);

	Game* game = (Game*)SCENE_MANAGER->Find("game");

	this->zBackButton = new Image();
	this->zBackButton->SetImage(RESOURCE_MANAGER->GetBackButton());

	this->zBackButton->m_X = 5.0f * game->GetGraphicsScaleX();
	this->zBackButton->m_Y = (float)IwGxGetScreenHeight() - RESOURCE_MANAGER->GetBackButton()->GetHeight() * game->GetGraphicsScaleY();

	this->zBackButton->m_ScaleX = game->GetGraphicsScaleX();
	this->zBackButton->m_ScaleY = game->GetGraphicsScaleX();

	AddChild(this->zBackButton);
}

void HelpScreen::Update( float pDeltaTime /*= 0.0f*/, float pAlphaMul /*= 1.0f */ )
{
	if(!this->zIsActive)
		return;

	Scene::Update(pDeltaTime, pAlphaMul);

	//Detect screen tap
	if(this->zIsInputActive && SCENE_MANAGER->GetCurrentScene() == this)
	{
		if(!INPUT_MANAGER->GetTouchedStatus() && INPUT_MANAGER->GetPrevTouchedStatus())
		{
			// Reset input
			INPUT_MANAGER->Reset();
			if(this->zBackButton->HitTest(INPUT_MANAGER->GetX_Position(), INPUT_MANAGER->GetY_Position()))
			{
				//Switch to game Scene
				Game* game = (Game*)SCENE_MANAGER->Find("game");

				SCENE_MANAGER->SwitchTo(game);
			}
		}
	}
}

void HelpScreen::Render()
{
	if(!this->zIsActive)
		return;

	Scene::Render();
}

void HelpScreen::OnBackKeyPress()
{
	Game* game = (Game*)SCENE_MANAGER->Find("game");

	SCENE_MANAGER->SwitchTo(game);
}

void HelpScreen::OnPause()
{
	this->zIsActive = false;
}

void HelpScreen::OnResume()
{
	this->zIsActive = true;
}

void HelpScreen::OnSwap()
{
	ADVERT_MANAGER->Hide();
}