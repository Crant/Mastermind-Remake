#include "MainMenu.h"

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
	if(this->zStartGameButton)
		delete this->zStartGameButton;
}

void MainMenu::StartGame(CTween* pTween)
{
	//Switch to game Scene
	Game* game = (Game*)GetSceneManager()->Find("game");
	GetSceneManager()->SwitchTo(game);

	// Create new game
	game->New_Game();
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

	CSprite* button = new CSprite();
	button->m_X = (IwGxGetScreenWidth() / 2);
	button->m_Y = (IwGxGetScreenHeight() / 2);
	button->SetImage(GetResource()->GetButton());
	button->m_AnchorX = 0.5f;
	button->m_AnchorY = 0.5f;
	button->m_ScaleX = game->GetGraphicsScale();
	button->m_ScaleY = game->GetGraphicsScale();

	CLabel* label = new CLabel();
	label->m_X = button->m_X;
	label->m_Y = button->m_Y;
	label->m_W = FONT_DESIGN_WIDTH;
	label->m_H = game->GetActualFontHeight();
	label->m_AnchorX = 0.5f;
	label->m_AnchorY = 0.5f;
	label->m_AlignHor = IW_2D_FONT_ALIGN_CENTRE;
	label->m_AlignVer = IW_2D_FONT_ALIGN_CENTRE;
	label->m_ScaleX = game->GetFontScale() / game->GetGraphicsScale(); // Compound scaling factors as label ie child of button
	label->m_ScaleY = label->m_ScaleX;
	label->m_Font = GetResource()->GetFont();
	label->m_Text = "Start Game";
	
	//label->m_Color = Iw2DSceneGraph::CColor(0, 0, 0, 255);

	this->zStartGameButton = new Button(button, label);
}

void MainMenu::Update( float pDeltaTime /* = 0.0f */, float pAlphaMul /* = 1.0f */ )
{
	if(!this->zIsActive)
		return;

	Scene::Update(pDeltaTime, pAlphaMul);

	if(this->zStartGameButton)
		this->zStartGameButton->Update(pDeltaTime, pAlphaMul);

	//Detect screen tap
	if(this->zIsInputActive && this->zSceneManager->GetCurrentScene() == this 
		&& !GetInput()->GetTouchedStatus() && GetInput()->GetPrevTouchedStatus())
	{
		// Reset input
		GetInput()->Reset();
		if(this->zStartGameButton->GetButton()->HitTest(GetInput()->GetX_Position(), GetInput()->GetY_Position()))
		{
			this->zTweener.Tween(0.2f,
					DELAY, 0.25f,
					ONCOMPLETE, StartGame,
					END);
		}
	}
}

void MainMenu::Render()
{
	if(!this->zIsActive)
		return;

	Scene::Render();

	if(this->zStartGameButton)
		this->zStartGameButton->Render();
}