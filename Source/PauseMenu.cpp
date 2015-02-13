#include "PauseMenu.h"

#include "Game.h"
#include "Input.h"
#include "Audio.h"
#include "Resource.h"
#include "IwGx.h"

using namespace Iw2DSceneGraph;

PauseMenu::PauseMenu()
{
	this->zNewGameButton = 0;
	this->zExitGameButton = 0;
	this->zResumeGameButton = 0;
}

PauseMenu::~PauseMenu()
{
}


void PauseMenu::NewGame( CTween* pTween )
{
	//Switch to game Scene
	Game* game = (Game*)GetSceneManager()->Find("game");
	GetSceneManager()->SwitchTo(game);

	// Create new game
	game->New_Game();
}

void PauseMenu::ResumeGame( CTween* pTween )
{
	//Switch to game Scene
	Game* game = (Game*)GetSceneManager()->Find("game");
	GetSceneManager()->SwitchTo(game);
}

void PauseMenu::ExitGame( CTween* pTween )
{
	s3eDeviceExit();
}

void PauseMenu::Init()
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

	//CLabel* label = new CLabel();
	//label->m_X = button->m_X;
	//label->m_Y = button->m_Y;
	//label->m_W = button->m_W;
	//label->m_H = button->m_H;
	//label->m_AnchorX = 0.5f;
	//label->m_AnchorY = 0.5f;
	//label->m_AlignHor = IW_2D_FONT_ALIGN_CENTRE;
	//label->m_AlignVer = IW_2D_FONT_ALIGN_CENTRE;
	//label->m_ScaleX = game->GetFontScale();
	//label->m_ScaleY = label->m_ScaleX;
	//label->m_Font = GetResource()->GetFont();
	//label->m_Text = "New Game";
	//label->m_Color = Iw2DSceneGraph::CColor(0, 0, 0, 255);

	//this->zNewGameButton = new Button(button, label);

	this->zNewGameButton = new CSprite();
	this->zNewGameButton->m_X = (IwGxGetScreenWidth() / 2.0f);
	this->zNewGameButton->m_Y = (IwGxGetScreenHeight() / 2) - GetResource()->GetStartGameButton()->GetHeight() * game->GetGraphicsScale() * 2.0f;
	this->zNewGameButton->SetImage(GetResource()->GetNewGameButton());
	this->zNewGameButton->m_AnchorX = 0.5f;
	this->zNewGameButton->m_AnchorY = 0.5f;
	this->zNewGameButton->m_ScaleX = game->GetGraphicsScale();
	this->zNewGameButton->m_ScaleY = game->GetGraphicsScale();

	AddChild(this->zNewGameButton);

	this->zResumeGameButton = new CSprite();
	this->zResumeGameButton->m_X = (IwGxGetScreenWidth() / 2.0f);
	this->zResumeGameButton->m_Y = (IwGxGetScreenHeight() / 2) - GetResource()->GetResumeGameButton()->GetHeight() * game->GetGraphicsScale() * 0.0f;
	this->zResumeGameButton->SetImage(GetResource()->GetResumeGameButton());
	this->zResumeGameButton->m_AnchorX = 0.5f;
	this->zResumeGameButton->m_AnchorY = 0.5f;
	this->zResumeGameButton->m_ScaleX = game->GetGraphicsScale();
	this->zResumeGameButton->m_ScaleY = game->GetGraphicsScale();

	AddChild(this->zResumeGameButton);

	this->zExitGameButton = new CSprite();
	this->zExitGameButton->m_X = (IwGxGetScreenWidth() / 2.0f);
	this->zExitGameButton->m_Y = (IwGxGetScreenHeight() / 2) + GetResource()->GetExitGameButton()->GetHeight() * game->GetGraphicsScale() * 2.0f;
	this->zExitGameButton->SetImage(GetResource()->GetExitGameButton());
	this->zExitGameButton->m_AnchorX = 0.5f;
	this->zExitGameButton->m_AnchorY = 0.5f;
	this->zExitGameButton->m_ScaleX = game->GetGraphicsScale();
	this->zExitGameButton->m_ScaleY = game->GetGraphicsScale();

	AddChild(this->zExitGameButton);

	//CLabel* label2 = new CLabel();
	//label2->m_X = button2->m_X;
	//label2->m_Y = button2->m_Y;
	//label2->m_W = button2->m_W;
	//label2->m_H = button2->m_H;
	//label2->m_AnchorX = 0.5f;
	//label2->m_AnchorY = 0.5f;
	//label2->m_AlignHor = IW_2D_FONT_ALIGN_CENTRE;
	//label2->m_AlignVer = IW_2D_FONT_ALIGN_CENTRE;
	//label2->m_ScaleX = game->GetFontScale() / game->GetGraphicsScale();
	//label2->m_ScaleY = label2->m_ScaleX;
	//label2->m_Font = GetResource()->GetFont();
	//label2->m_Text = "Resume";
	//label2->m_Color = Iw2DSceneGraph::CColor(0, 0, 0, 255);

	//this->zResumeGameButton = new Button(button2, label2);
}

void PauseMenu::Update( float pDeltaTime /* = 0.0f */, float pAlphaMul /* = 1.0f */ )
{
	if(!this->zIsActive)
		return;

	Scene::Update(pDeltaTime, pAlphaMul);

	//Detect screen tap
	if(this->zIsInputActive && this->zSceneManager->GetCurrentScene() == this)
	{
		if(GetInput()->GetBackKeyStatus())
		{
			s3eDeviceExit();
		}
		if(!GetInput()->GetTouchedStatus() && GetInput()->GetPrevTouchedStatus())
		{
			// Reset input
			GetInput()->Reset();
			if(this->zNewGameButton->HitTest(GetInput()->GetX_Position(), GetInput()->GetY_Position()))
			{
				this->zTweener.Tween(0.2f,
					DELAY, 0.25f,
					ONCOMPLETE, NewGame,
					END);
			}
			else if(this->zResumeGameButton->HitTest(GetInput()->GetX_Position(), GetInput()->GetY_Position()))
			{
				this->zTweener.Tween(0.2f,
					DELAY, 0.25f,
					ONCOMPLETE, ResumeGame,
					END);
			}
			else if(this->zExitGameButton->HitTest(GetInput()->GetX_Position(), GetInput()->GetY_Position()))
			{
				this->zTweener.Tween(0.2f,
					DELAY, 0.25f,
					ONCOMPLETE, ExitGame,
					END);
			}
		}
	}
}

void PauseMenu::Render()
{
	if(!this->zIsActive)
		return;

	Scene::Render();

	if(this->zNewGameButton)
		this->zNewGameButton->Render();

	if(this->zResumeGameButton)
		this->zResumeGameButton->Render();
}
