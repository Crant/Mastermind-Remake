#include "SceneGameModeMenu.h"

#include "SceneGame.h"
#include "Input.h"
#include "Resource.h"
#include "IwGx.h"

using namespace Iw2DSceneGraph;

GameModeMenu::GameModeMenu()
{
	this->zSinglePlayerButton = 0;
	this->zMultiPlayerButton = 0;

	this->zMultiPlayerLabel = 0;
	this->zSinglePlayerLabel = 0;
}

GameModeMenu::~GameModeMenu()
{

}

void GameModeMenu::Init()
{
	Game* game = (Game*)GetSceneManager()->Find("game");

	CSprite* bg = new CSprite();
	bg->m_X = (float)IwGxGetScreenWidth() / 2;
	bg->m_Y = (float)IwGxGetScreenHeight() / 2;
	bg->SetImage(GetResource()->GetBG());
	bg->m_W = bg->GetImage()->GetWidth();
	bg->m_H = bg->GetImage()->GetHeight();
	bg->m_AnchorX = 0.5f;
	bg->m_AnchorY = 0.5f;
	// Fit background to screen size
	bg->m_ScaleX = (float)IwGxGetScreenWidth() / bg->GetImage()->GetWidth();
	bg->m_ScaleY = (float)IwGxGetScreenHeight() / bg->GetImage()->GetHeight();

	AddChild(bg);

	this->zSinglePlayerButton = new CSprite();
	this->zSinglePlayerButton->m_X = (IwGxGetScreenWidth() / 2.0f) - 150 * game->GetGraphicsScaleX();
	this->zSinglePlayerButton->m_Y = 250 * game->GetGraphicsScaleY();
	this->zSinglePlayerButton->SetImage(GetResource()->GetButtonSmall());
	this->zSinglePlayerButton->m_AnchorX = 0.5f;
	this->zSinglePlayerButton->m_AnchorY = 0.5f;
	this->zSinglePlayerButton->m_ScaleX = game->GetGraphicsScaleX();
	this->zSinglePlayerButton->m_ScaleY = game->GetGraphicsScaleY();

	AddChild(this->zSinglePlayerButton);

	this->zSinglePlayerLabel = new CLabel();
	this->zSinglePlayerLabel->m_X = this->zSinglePlayerButton->m_W / 2;
	this->zSinglePlayerLabel->m_Y = this->zSinglePlayerButton->m_H / 2;
	this->zSinglePlayerLabel->m_W = this->zSinglePlayerButton->m_W;
	this->zSinglePlayerLabel->m_H = this->zSinglePlayerButton->m_H;
	this->zSinglePlayerLabel->m_Text = "Singleplayer";
	this->zSinglePlayerLabel->m_AlignHor = IW_2D_FONT_ALIGN_CENTRE;
	this->zSinglePlayerLabel->m_AlignVer = IW_2D_FONT_ALIGN_CENTRE;
	this->zSinglePlayerLabel->m_Font = GetResource()->GetFontNormal();
	this->zSinglePlayerLabel->m_AnchorX = 0.5f;
	this->zSinglePlayerLabel->m_AnchorY = 0.5f;
	this->zSinglePlayerLabel->m_ScaleX = game->GetFontScale() / game->GetGraphicsScaleX();
	this->zSinglePlayerLabel->m_ScaleY = game->GetFontScale() / game->GetGraphicsScaleY();

	this->zSinglePlayerButton->AddChild(this->zSinglePlayerLabel);

	this->zMultiPlayerButton = new CSprite();
	this->zMultiPlayerButton->m_X = (IwGxGetScreenWidth() / 2.0f) + 150 * game->GetGraphicsScaleX();
	this->zMultiPlayerButton->m_Y = 250 * game->GetGraphicsScaleY();
	this->zMultiPlayerButton->SetImage(GetResource()->GetButtonSmall());
	this->zMultiPlayerButton->m_AnchorX = 0.5f;
	this->zMultiPlayerButton->m_AnchorY = 0.5f;
	this->zMultiPlayerButton->m_ScaleX = game->GetGraphicsScaleX();
	this->zMultiPlayerButton->m_ScaleY = game->GetGraphicsScaleY();

	AddChild(this->zMultiPlayerButton);

	this->zMultiPlayerLabel = new CLabel();
	this->zMultiPlayerLabel->m_X = this->zMultiPlayerButton->m_W / 2;
	this->zMultiPlayerLabel->m_Y = this->zMultiPlayerButton->m_H / 2;
	this->zMultiPlayerLabel->m_W = this->zMultiPlayerButton->m_W;
	this->zMultiPlayerLabel->m_H = this->zMultiPlayerButton->m_H;
	this->zMultiPlayerLabel->m_Text = "Multiplayer";
	this->zMultiPlayerLabel->m_AlignHor = IW_2D_FONT_ALIGN_CENTRE;
	this->zMultiPlayerLabel->m_AlignVer = IW_2D_FONT_ALIGN_CENTRE;
	this->zMultiPlayerLabel->m_Font = GetResource()->GetFontNormal();
	this->zMultiPlayerLabel->m_AnchorX = 0.5f;
	this->zMultiPlayerLabel->m_AnchorY = 0.5f;
	this->zMultiPlayerLabel->m_ScaleX = game->GetFontScale() / game->GetGraphicsScaleX();
	this->zMultiPlayerLabel->m_ScaleY = game->GetFontScale() / game->GetGraphicsScaleY();

	this->zMultiPlayerButton->AddChild(this->zMultiPlayerLabel);
}

void GameModeMenu::Update( float pDeltaTime /*= 0.0f*/, float pAlphaMul /*= 1.0f */ )
{
	if(!this->zIsActive)
		return;

	Scene::Update(pDeltaTime, pAlphaMul);

	//Detect screen tap
	if(this->zIsInputActive && this->zSceneManager->GetCurrentScene() == this)
	{
		if(!GetInput()->GetTouchedStatus() && GetInput()->GetPrevTouchedStatus())
		{
			// Reset input
			GetInput()->Reset();
			if(this->zSinglePlayerButton->HitTest(GetInput()->GetX_Position(), GetInput()->GetY_Position()))
			{
				Game* game = (Game*)GetSceneManager()->Find("game");

				game->SetGameMode(GAME_MODE_SINGLE);
				game->New_Game();
				GetSceneManager()->SwitchTo(game);
			}
			else if(this->zMultiPlayerButton->HitTest(GetInput()->GetX_Position(), GetInput()->GetY_Position()))
			{
				Game* game = (Game*)GetSceneManager()->Find("game");

				game->SetGameMode(GAME_MODE_MULTI);
				game->New_Game();
				GetSceneManager()->SwitchTo(game);
			}
		}
	}
}

void GameModeMenu::Render()
{
	if(!this->zIsActive)
		return;

	Scene::Render();
}

void GameModeMenu::OnBackKeyPress()
{
	Scene* scene = GetSceneManager()->GetPreviousScene();

	GetSceneManager()->SwitchTo(scene);
}

void GameModeMenu::OnPause()
{
	this->zIsActive = false;
}

void GameModeMenu::OnResume()
{
	this->zIsActive = true;
}