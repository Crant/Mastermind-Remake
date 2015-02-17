#include "MainMenu.h"

#include "HighscoreScreen.h"
#include "Game.h"
#include "Input.h"
#include "Audio.h"
#include "Resource.h"
#include "IwGx.h"

using namespace Iw2DSceneGraph;

MainMenu::MainMenu()
{
	this->zStartGameButton = 0;
}

MainMenu::~MainMenu()
{
}

void MainMenu::StartGame(CTween* pTween)
{
	//Switch to game Scene
	Game* game = (Game*)GetSceneManager()->Find("game");
	GetSceneManager()->SwitchTo(game);

	// Create new game
	game->New_Game();
}

void MainMenu::ExitGame( CTween* pTween )
{
	Game* game = (Game*)GetSceneManager()->Find("game");
	game->SaveHighscore();
	s3eDeviceExit();
}

void MainMenu::ShowHighscore( CTween* pTween )
{
	HighscoreScreen* highscore = (HighscoreScreen*)GetSceneManager()->Find("highscore");
	MainMenu* mainmenu = (MainMenu*)GetSceneManager()->Find("mainmenu");

	highscore->SetPreviousScene(mainmenu);
	GetSceneManager()->SwitchTo(highscore);
}

void MainMenu::Init()
{
	Scene::Init();
	
	//Initialize UI
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

	Game* game = (Game*)GetSceneManager()->Find("game");

	this->zStartGameButton = new CSprite();
	this->zStartGameButton->m_X = (IwGxGetScreenWidth() / 2.0f);
	this->zStartGameButton->m_Y = (IwGxGetScreenHeight() / 2) - GetResource()->GetStartGameButton()->GetHeight() * game->GetGraphicsScale() * 2.0f;
	this->zStartGameButton->SetImage(GetResource()->GetStartGameButton());
	this->zStartGameButton->m_AnchorX = 0.5f;
	this->zStartGameButton->m_AnchorY = 0.5f;
	this->zStartGameButton->m_ScaleX = game->GetGraphicsScale();
	this->zStartGameButton->m_ScaleY = game->GetGraphicsScale();

	AddChild(this->zStartGameButton);

	this->zExitButton = new CSprite();
	this->zExitButton->m_X = (IwGxGetScreenWidth() / 2.0f);
	this->zExitButton->m_Y = (IwGxGetScreenHeight() / 2) + GetResource()->GetExitGameButton()->GetHeight() * game->GetGraphicsScale() * 2.0f;
	this->zExitButton->SetImage(GetResource()->GetExitGameButton());
	this->zExitButton->m_AnchorX = 0.5f;
	this->zExitButton->m_AnchorY = 0.5f;
	this->zExitButton->m_ScaleX = game->GetGraphicsScale();
	this->zExitButton->m_ScaleY = game->GetGraphicsScale();

	AddChild(this->zExitButton);

	this->zHighscoreButton = new CSprite();
	this->zHighscoreButton->m_X = (IwGxGetScreenWidth() / 2.0f);
	this->zHighscoreButton->m_Y = (IwGxGetScreenHeight() / 2) + GetResource()->GetExitGameButton()->GetHeight() * game->GetGraphicsScale() * 0.0f;
	this->zHighscoreButton->SetImage(GetResource()->GetButton());
	this->zHighscoreButton->m_AnchorX = 0.5f;
	this->zHighscoreButton->m_AnchorY = 0.5f;
	this->zHighscoreButton->m_ScaleX = game->GetGraphicsScale();
	this->zHighscoreButton->m_ScaleY = game->GetGraphicsScale();

	AddChild(this->zHighscoreButton);

	this->zHighscoreLabel = new CLabel();
	this->zHighscoreLabel->m_X = this->zHighscoreButton->m_W / 2;
	this->zHighscoreLabel->m_Y = this->zHighscoreButton->m_H / 2;
	this->zHighscoreLabel->m_W = this->zHighscoreButton->m_W;
	this->zHighscoreLabel->m_H = this->zHighscoreButton->m_H;
	this->zHighscoreLabel->m_Text = "Highscore";
	this->zHighscoreLabel->m_AlignHor = IW_2D_FONT_ALIGN_CENTRE;
	this->zHighscoreLabel->m_AlignVer = IW_2D_FONT_ALIGN_CENTRE;
	this->zHighscoreLabel->m_Font = GetResource()->GetFont();
	this->zHighscoreLabel->m_AnchorX = 0.5f;
	this->zHighscoreLabel->m_AnchorY = 0.5f;
	this->zHighscoreLabel->m_ScaleX = game->GetFontScale() / game->GetGraphicsScale();
	this->zHighscoreLabel->m_ScaleY = this->zHighscoreLabel->m_ScaleX;// / this->zGraphics_Scale;
	
	this->zHighscoreButton->AddChild(this->zHighscoreLabel);
}

void MainMenu::Update( float pDeltaTime /* = 0.0f */, float pAlphaMul /* = 1.0f */ )
{
	if(!this->zIsActive)
		return;

	Scene::Update(pDeltaTime, pAlphaMul);

	//Detect screen tap
	if(this->zIsInputActive && this->zSceneManager->GetCurrentScene() == this) 
	{
		if(GetInput()->GetBackKeyStatus())
		{
			// Reset input
			GetInput()->Reset();
			this->zTweener.Tween(0.2f,
				DELAY, 0.25f,
				ONCOMPLETE, ExitGame,
				END);
		}
		if(!GetInput()->GetTouchedStatus() && GetInput()->GetPrevTouchedStatus())
		{
			// Reset input
			GetInput()->Reset();
			if(this->zStartGameButton->HitTest(GetInput()->GetX_Position(), GetInput()->GetY_Position()))
			{
				this->zTweener.Tween(0.2f,
					DELAY, 0.25f,
					ONCOMPLETE, StartGame,
					END);
			}

			if(this->zExitButton->HitTest(GetInput()->GetX_Position(), GetInput()->GetY_Position()))
			{
				this->zTweener.Tween(0.2f,
					DELAY, 0.25f,
					ONCOMPLETE, ExitGame,
					END);
			}

			if(this->zHighscoreButton->HitTest(GetInput()->GetX_Position(), GetInput()->GetY_Position()))
			{
				this->zTweener.Tween(0.2f,
					DELAY, 0.25f,
					ONCOMPLETE, ShowHighscore,
					END);
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
