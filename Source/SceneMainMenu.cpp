#include "SceneMainMenu.h"

#include "SceneHighscoreScreen.h"
#include "SceneGame.h"
#include "Input.h"
#include "Resource.h"
#include "IwGx.h"
#include "Ads.h"

using namespace Iw2DSceneGraph;

MainMenu::MainMenu()
{
	this->zSinglePlayerButton = 0;
	this->zMultiPlayerButton = 0;
	this->zHighscoreButton = 0;
	this->zExitButton = 0;

	this->zSinglePlayerLabel = 0;
	this->zMultiPlayerLabel = 0;
	this->zHighscoreLabel = 0;
}

MainMenu::~MainMenu()
{
}

void MainMenu::Init()
{
	Scene::Init();
	
	//Initialize UI
	CSprite* bg = new CSprite();
	bg->m_X = (float)IwGxGetScreenWidth() / 2;
	bg->m_Y = (float)IwGxGetScreenHeight() / 2;
	bg->SetImage(RESOURCE_MANAGER->GetBG());
	bg->m_W = bg->GetImage()->GetWidth();
	bg->m_H = bg->GetImage()->GetHeight();
	bg->m_AnchorX = 0.5f;
	bg->m_AnchorY = 0.5f;
	// Fit background to screen size
	bg->m_ScaleX = (float)IwGxGetScreenWidth() / bg->GetImage()->GetWidth();
	bg->m_ScaleY = (float)IwGxGetScreenHeight() / bg->GetImage()->GetHeight();

	AddChild(bg);

	Game* game = (Game*)SCENE_MANAGER->Find("game");

	//One Player
	this->zSinglePlayerButton = new CSprite();
	this->zSinglePlayerButton->m_X = (IwGxGetScreenWidth() / 2.0f);
	this->zSinglePlayerButton->m_Y = 374 * game->GetGraphicsScaleY();
	this->zSinglePlayerButton->SetImage(RESOURCE_MANAGER->GetButton());
	this->zSinglePlayerButton->m_AnchorX = 0.5f;
	this->zSinglePlayerButton->m_AnchorY = 0.5f;
	this->zSinglePlayerButton->m_ScaleX = game->GetGraphicsScaleX();
	this->zSinglePlayerButton->m_ScaleY = this->zSinglePlayerButton->m_ScaleX;

	AddChild(this->zSinglePlayerButton);

	this->zSinglePlayerLabel = new CLabel();
	this->zSinglePlayerLabel->m_X = this->zSinglePlayerButton->m_W / 2;
	this->zSinglePlayerLabel->m_Y = this->zSinglePlayerButton->m_H / 2;
	this->zSinglePlayerLabel->m_W = this->zSinglePlayerButton->m_W;
	this->zSinglePlayerLabel->m_H = this->zSinglePlayerButton->m_H;
	this->zSinglePlayerLabel->m_Text = "One Player";

	this->zSinglePlayerLabel->m_AlignHor = IW_2D_FONT_ALIGN_CENTRE;
	this->zSinglePlayerLabel->m_AlignVer = IW_2D_FONT_ALIGN_CENTRE;
	this->zSinglePlayerLabel->m_Font = RESOURCE_MANAGER->GetFontLarge();
	this->zSinglePlayerLabel->m_AnchorX = 0.5f;
	this->zSinglePlayerLabel->m_AnchorY = 0.5f;
	this->zSinglePlayerLabel->m_ScaleX = game->GetFontScale() / game->GetGraphicsScaleX();
	this->zSinglePlayerLabel->m_ScaleY = this->zSinglePlayerLabel->m_ScaleX;

	this->zSinglePlayerButton->AddChild(this->zSinglePlayerLabel);

	//Two Player
	this->zMultiPlayerButton = new CSprite();
	this->zMultiPlayerButton->m_X = (IwGxGetScreenWidth() / 2.0f);
	this->zMultiPlayerButton->m_Y = 374 * game->GetGraphicsScaleY() + RESOURCE_MANAGER->GetButton()->GetHeight() * game->GetGraphicsScaleY() * 1.5f;
	this->zMultiPlayerButton->SetImage(RESOURCE_MANAGER->GetButton());
	this->zMultiPlayerButton->m_AnchorX = 0.5f;
	this->zMultiPlayerButton->m_AnchorY = 0.5f;
	this->zMultiPlayerButton->m_ScaleX = game->GetGraphicsScaleX();
	this->zMultiPlayerButton->m_ScaleY = this->zMultiPlayerButton->m_ScaleX;

	AddChild(this->zMultiPlayerButton);

	this->zMultiPlayerLabel = new CLabel();
	this->zMultiPlayerLabel->m_X = this->zMultiPlayerButton->m_W / 2;
	this->zMultiPlayerLabel->m_Y = this->zMultiPlayerButton->m_H / 2;
	this->zMultiPlayerLabel->m_W = this->zMultiPlayerButton->m_W;
	this->zMultiPlayerLabel->m_H = this->zMultiPlayerButton->m_H;
	this->zMultiPlayerLabel->m_Text = "Two Players";
	this->zMultiPlayerLabel->m_AlignHor = IW_2D_FONT_ALIGN_CENTRE;
	this->zMultiPlayerLabel->m_AlignVer = IW_2D_FONT_ALIGN_CENTRE;
	this->zMultiPlayerLabel->m_Font = RESOURCE_MANAGER->GetFontLarge();
	this->zMultiPlayerLabel->m_AnchorX = 0.5f;
	this->zMultiPlayerLabel->m_AnchorY = 0.5f;
	this->zMultiPlayerLabel->m_ScaleX = game->GetFontScale() / game->GetGraphicsScaleX();
	this->zMultiPlayerLabel->m_ScaleY = this->zMultiPlayerLabel->m_ScaleX;

	this->zMultiPlayerButton->AddChild(this->zMultiPlayerLabel);

	//Highscore button
	this->zHighscoreButton = new CSprite();
	this->zHighscoreButton->m_X = (IwGxGetScreenWidth() / 2.0f);
	this->zHighscoreButton->m_Y = 374 * game->GetGraphicsScaleY() + RESOURCE_MANAGER->GetButton()->GetHeight() * game->GetGraphicsScaleY() * 3.0f;
	this->zHighscoreButton->SetImage(RESOURCE_MANAGER->GetButton());
	//this->zHighscoreButton->SetAtlas(RESOURCE_MANAGER->GetButtonSmallAtlas());
	this->zHighscoreButton->m_AnchorX = 0.5f;
	this->zHighscoreButton->m_AnchorY = 0.5f;
	this->zHighscoreButton->m_ScaleX = game->GetGraphicsScaleX();
	this->zHighscoreButton->m_ScaleY = this->zHighscoreButton->m_ScaleX;

	AddChild(this->zHighscoreButton);

	this->zHighscoreLabel = new CLabel();
	this->zHighscoreLabel->m_X = this->zHighscoreButton->m_W / 2;
	this->zHighscoreLabel->m_Y = this->zHighscoreButton->m_H / 2;
	this->zHighscoreLabel->m_W = this->zHighscoreButton->m_W;
	this->zHighscoreLabel->m_H = this->zHighscoreButton->m_H;
	this->zHighscoreLabel->m_Text = "Highscore";
	this->zHighscoreLabel->m_AlignHor = IW_2D_FONT_ALIGN_CENTRE;
	this->zHighscoreLabel->m_AlignVer = IW_2D_FONT_ALIGN_CENTRE;
	this->zHighscoreLabel->m_Font = RESOURCE_MANAGER->GetFontLarge();
	this->zHighscoreLabel->m_AnchorX = 0.5f;
	this->zHighscoreLabel->m_AnchorY = 0.5f;
	this->zHighscoreLabel->m_ScaleX = game->GetFontScale() / game->GetGraphicsScaleX();
	this->zHighscoreLabel->m_ScaleY = this->zHighscoreLabel->m_ScaleX;

	this->zHighscoreButton->AddChild(this->zHighscoreLabel);

	//Exit Game
	this->zExitButton = new CSprite();
	this->zExitButton->m_X = (IwGxGetScreenWidth() / 2.0f);
	this->zExitButton->m_Y = 374 * game->GetGraphicsScaleY() + RESOURCE_MANAGER->GetButton()->GetHeight() * game->GetGraphicsScaleY() * 4.5f;
	this->zExitButton->SetImage(RESOURCE_MANAGER->GetButton());
	this->zExitButton->m_AnchorX = 0.5f;
	this->zExitButton->m_AnchorY = 0.5f;
	this->zExitButton->m_ScaleX = game->GetGraphicsScaleX();
	this->zExitButton->m_ScaleY = this->zExitButton->m_ScaleX;

	AddChild(this->zExitButton);

	CLabel* exitGameLabel = new CLabel();
	exitGameLabel->m_X = this->zExitButton->m_W / 2;
	exitGameLabel->m_Y = this->zExitButton->m_H / 2;
	exitGameLabel->m_W = this->zExitButton->m_W;
	exitGameLabel->m_H = this->zExitButton->m_H;
	exitGameLabel->m_Text = "Exit Game";
	exitGameLabel->m_AlignHor = IW_2D_FONT_ALIGN_CENTRE;
	exitGameLabel->m_AlignVer = IW_2D_FONT_ALIGN_CENTRE;
	exitGameLabel->m_Font = RESOURCE_MANAGER->GetFontLarge();
	exitGameLabel->m_AnchorX = 0.5f;
	exitGameLabel->m_AnchorY = 0.5f;
	exitGameLabel->m_ScaleX = game->GetFontScale() / game->GetGraphicsScaleX();
	exitGameLabel->m_ScaleY = exitGameLabel->m_ScaleX;

	this->zExitButton->AddChild(exitGameLabel);
}

void MainMenu::Update( float pDeltaTime /* = 0.0f */, float pAlphaMul /* = 1.0f */ )
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
			if(this->zSinglePlayerButton->HitTest(INPUT_MANAGER->GetX_Position(), INPUT_MANAGER->GetY_Position()))
			{
				Game* game = (Game*)SCENE_MANAGER->Find("game");

				game->SetGameMode(GAME_MODE_SINGLE);
				game->New_Game();
				SCENE_MANAGER->SwitchTo(game);
			}
			else if(this->zMultiPlayerButton->HitTest(INPUT_MANAGER->GetX_Position(), INPUT_MANAGER->GetY_Position()))
			{
				Game* game = (Game*)SCENE_MANAGER->Find("game");

				game->SetGameMode(GAME_MODE_MULTI);
				game->New_Game();
				SCENE_MANAGER->SwitchTo(game);
			}
			else if(this->zExitButton->HitTest(INPUT_MANAGER->GetX_Position(), INPUT_MANAGER->GetY_Position()))
			{
				Game* game = (Game*)SCENE_MANAGER->Find("game");
				game->SaveHighscore();

				SCENE_MANAGER->QuitGame();
			}
			else if(this->zHighscoreButton->HitTest(INPUT_MANAGER->GetX_Position(), INPUT_MANAGER->GetY_Position()))
			{
				HighscoreScreen* highscore = (HighscoreScreen*)SCENE_MANAGER->Find("highscore");

				SCENE_MANAGER->SwitchTo(highscore);
			}
		}
	}
}

void MainMenu::Render()
{
	if(!this->zIsActive)
		return;

	Scene::Render();
}

void MainMenu::OnBackKeyPress()
{
	ADVERT_MANAGER->Hide();

	Game* game = (Game*)SCENE_MANAGER->Find("game");
	game->SaveHighscore();

	SCENE_MANAGER->QuitGame();
}

void MainMenu::OnPause()
{
	this->zIsActive = false;
}

void MainMenu::OnResume()
{
	this->zIsActive = true;
}

void MainMenu::OnSwap()
{
	ADVERT_MANAGER->Show();
}
