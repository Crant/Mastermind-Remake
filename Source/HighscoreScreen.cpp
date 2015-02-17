#include "HighscoreScreen.h"

#include "Resource.h"
#include "IwGx.h"
#include "Input.h"
#include "Game.h"
#include "Highscore.h"

using namespace Iw2DSceneGraph;

HighscoreScreen::HighscoreScreen()
{
	this->zPrevScene = 0;
}

HighscoreScreen::~HighscoreScreen()
{

}

void HighscoreScreen::Init()
{
	Scene::Init();

	this->zPrevScene = 0;

	CSprite* bg = new CSprite();
	bg->m_X = (float)IwGxGetScreenWidth() / 2;
	bg->m_Y = (float)IwGxGetScreenHeight() / 2;
	bg->SetImage(GetResource()->GetHighscoreBG());
	bg->m_W = bg->GetImage()->GetWidth();
	bg->m_H = bg->GetImage()->GetHeight();
	bg->m_AnchorX = 0.5f;
	bg->m_AnchorY = 0.5f;
	// Fit background to screen size
	bg->m_ScaleX = (float)IwGxGetScreenWidth() / bg->GetImage()->GetWidth();
	bg->m_ScaleY = (float)IwGxGetScreenHeight() / bg->GetImage()->GetHeight();

	AddChild(bg);

	Game* game = (Game*)GetSceneManager()->Find("game");

	this->zRoundTitle = new CLabel();
	this->zRoundTitle->m_X = 140 * game->GetGraphicsScale();
	this->zRoundTitle->m_Y = 230 * game->GetGraphicsScale();
	this->zRoundTitle->m_W = FONT_DESIGN_WIDTH;
	this->zRoundTitle->m_H = game->GetActualFontHeight();
	this->zRoundTitle->m_Text = "Rounds";
	this->zRoundTitle->m_AlignHor = IW_2D_FONT_ALIGN_LEFT;
	this->zRoundTitle->m_AlignVer = IW_2D_FONT_ALIGN_TOP;
	this->zRoundTitle->m_Font = GetResource()->GetFont();
	this->zRoundTitle->m_ScaleX = game->GetFontScale();// / this->zGraphics_Scale;
	this->zRoundTitle->m_ScaleY = this->zRoundTitle->m_ScaleX;// / this->zGraphics_Scale;

	AddChild(this->zRoundTitle);

	this->zTimeTitle = new CLabel();
	this->zTimeTitle->m_X = 470 * game->GetGraphicsScale();
	this->zTimeTitle->m_Y = 230 * game->GetGraphicsScale();
	this->zTimeTitle->m_W = FONT_DESIGN_WIDTH;
	this->zTimeTitle->m_H = game->GetActualFontHeight();
	this->zTimeTitle->m_Text = "Time";
	this->zTimeTitle->m_AlignHor = IW_2D_FONT_ALIGN_LEFT;
	this->zTimeTitle->m_AlignVer = IW_2D_FONT_ALIGN_TOP;
	this->zTimeTitle->m_Font = GetResource()->GetFont();
	this->zTimeTitle->m_ScaleX = game->GetFontScale();// / this->zGraphics_Scale;
	this->zTimeTitle->m_ScaleY = this->zRoundTitle->m_ScaleX;// / this->zGraphics_Scale;

	AddChild(this->zTimeTitle);

	for(int i = 0; i < 10; i++)
	{
		this->zRoundLabel[i] = new CLabel();
		this->zRoundLabel[i]->m_X = 180 * game->GetGraphicsScale();
		this->zRoundLabel[i]->m_Y = 230 * game->GetGraphicsScale() + 50 * (i + 1) * game->GetGraphicsScale();
		this->zRoundLabel[i]->m_W = FONT_DESIGN_WIDTH;
		this->zRoundLabel[i]->m_H = game->GetActualFontHeight();
		this->zRoundLabel[i]->m_Text = "";
		this->zRoundLabel[i]->m_AlignHor = IW_2D_FONT_ALIGN_LEFT;
		this->zRoundLabel[i]->m_AlignVer = IW_2D_FONT_ALIGN_TOP;
		this->zRoundLabel[i]->m_Font = GetResource()->GetFont();
		this->zRoundLabel[i]->m_ScaleX = game->GetFontScale();// / this->zGraphics_Scale;
		this->zRoundLabel[i]->m_ScaleY = this->zRoundLabel[i]->m_ScaleX;// / this->zGraphics_Scale;

		AddChild(this->zRoundLabel[i]);

		this->zTimeLabel[i] = new CLabel();
		this->zTimeLabel[i]->m_X = 510 * game->GetGraphicsScale();
		this->zTimeLabel[i]->m_Y = 230 * game->GetGraphicsScale() + 50 * (i + 1) * game->GetGraphicsScale();
		this->zTimeLabel[i]->m_W = FONT_DESIGN_WIDTH;
		this->zTimeLabel[i]->m_H = game->GetActualFontHeight();
		this->zTimeLabel[i]->m_Text = "";
		this->zTimeLabel[i]->m_AlignHor = IW_2D_FONT_ALIGN_LEFT;
		this->zTimeLabel[i]->m_AlignVer = IW_2D_FONT_ALIGN_TOP;
		this->zTimeLabel[i]->m_Font = GetResource()->GetFont();
		this->zTimeLabel[i]->m_ScaleX = game->GetFontScale();// / this->zGraphics_Scale;
		this->zTimeLabel[i]->m_ScaleY = this->zRoundLabel[i]->m_ScaleX;// / this->zGraphics_Scale;

		AddChild(this->zTimeLabel[i]);
	}

	this->zBackButton = new CSprite();
	this->zBackButton->m_X = (IwGxGetScreenWidth() / 2.0f);
	this->zBackButton->m_Y = 990 * game->GetGraphicsScale();
	this->zBackButton->SetImage(GetResource()->GetButton());
	this->zBackButton->m_AnchorX = 0.5f;
	this->zBackButton->m_AnchorY = 0.0f;
	this->zBackButton->m_ScaleX = game->GetGraphicsScale();
	this->zBackButton->m_ScaleY = game->GetGraphicsScale();

	AddChild(this->zBackButton);

	this->BackButtonLabel = new CLabel();
	this->BackButtonLabel->m_X = this->zBackButton->m_W / 2;
	this->BackButtonLabel->m_Y = this->zBackButton->m_H / 2;
	this->BackButtonLabel->m_W = this->zBackButton->m_W;
	this->BackButtonLabel->m_H = this->zBackButton->m_H;
	this->BackButtonLabel->m_Text = "Back";
	this->BackButtonLabel->m_AlignHor = IW_2D_FONT_ALIGN_CENTRE;
	this->BackButtonLabel->m_AlignVer = IW_2D_FONT_ALIGN_CENTRE;
	this->BackButtonLabel->m_Font = GetResource()->GetFont();
	this->BackButtonLabel->m_AnchorX = 0.5f;
	this->BackButtonLabel->m_AnchorY = 0.5f;
	this->BackButtonLabel->m_ScaleX = game->GetFontScale() / game->GetGraphicsScale();
	this->BackButtonLabel->m_ScaleY = this->BackButtonLabel->m_ScaleX;// / this->zGraphics_Scale;

	this->zBackButton->AddChild(this->BackButtonLabel);
}

void HighscoreScreen::Update( float pDeltaTime /* = 0.0f */, float pAlphaMul /* = 1.0f */ )
{
	if(!this->zIsActive)
		return;

	Scene::Update(pDeltaTime, pAlphaMul);

	Game* game = (Game*)GetSceneManager()->Find("game");

	Highscore* highscore = game->GetHighscore();

	std::vector<Score*> scorelist = highscore->GetScoreList();

	for (int i = 0; i < scorelist.size(); i++)
	{
		char str[32];

		int round = scorelist[i]->GetRound();
		snprintf(str, 32, "%d", round);
		this->zRoundLabel[i]->SetText(str);

		float time = scorelist[i]->GetTime();
		snprintf(str, 32, "%d", (int)time);
		this->zTimeLabel[i]->SetText(str);
	}

	//Detect screen tap
	if(this->zIsInputActive && this->zSceneManager->GetCurrentScene() == this)
	{
		if(GetInput()->GetBackKeyStatus())
		{
			// Reset input
			GetInput()->Reset();
			this->zTweener.Tween(0.5f,
				ONCOMPLETE, ExitHighscore, 
				END);
		}
		if(!GetInput()->GetTouchedStatus() && GetInput()->GetPrevTouchedStatus())
		{
			// Reset input
			GetInput()->Reset();
			if(this->zBackButton->HitTest(GetInput()->GetX_Position(), GetInput()->GetY_Position()))
			{
				this->zTweener.Tween(0.2f,
					DELAY, 0.25f,
					ONCOMPLETE, ExitHighscore,
					END);
			}
		}

		
	}
}

void HighscoreScreen::Render()
{
	if(!this->zIsActive)
		return;

	Scene::Render();
}

void HighscoreScreen::ExitHighscore( CTween* pTween )
{
	HighscoreScreen* screen = (HighscoreScreen*)GetSceneManager()->Find("highscore");
	Scene* prevScene = screen->GetPreviousScene();

	GetSceneManager()->SwitchTo(prevScene);

	screen->SetPreviousScene(0);
}