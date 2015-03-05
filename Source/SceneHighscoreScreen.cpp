#include "SceneHighscoreScreen.h"

#include "Resource.h"
#include "IwGx.h"
#include "Input.h"
#include "SceneGame.h"
#include "Highscore.h"
#include "Ads.h"

using namespace Iw2DSceneGraph;

HighscoreScreen::HighscoreScreen()
{
}

HighscoreScreen::~HighscoreScreen()
{

}

void HighscoreScreen::Init()
{
	Scene::Init();

	CSprite* bg = new CSprite();
	bg->m_X = (float)IwGxGetScreenWidth() / 2;
	bg->m_Y = (float)IwGxGetScreenHeight() / 2;
	bg->SetImage(RESOURCE_MANAGER->GetHighscoreBG());
	bg->m_W = bg->GetImage()->GetWidth();
	bg->m_H = bg->GetImage()->GetHeight();
	bg->m_AnchorX = 0.5f;
	bg->m_AnchorY = 0.5f;
	// Fit background to screen size
	bg->m_ScaleX = (float)IwGxGetScreenWidth() / bg->GetImage()->GetWidth();
	bg->m_ScaleY = (float)IwGxGetScreenHeight() / bg->GetImage()->GetHeight();

	AddChild(bg);

	Game* game = (Game*)SCENE_MANAGER->Find("game");

	this->zRoundTitle = new CLabel();
	this->zRoundTitle->m_X = 140 * game->GetGraphicsScaleX();
	this->zRoundTitle->m_Y = 230 * game->GetGraphicsScaleY();
	this->zRoundTitle->m_W = FONT_DESIGN_WIDTH;
	this->zRoundTitle->m_H = game->GetActualFontHeight();
	this->zRoundTitle->m_Text = "Rounds";
	this->zRoundTitle->m_AlignHor = IW_2D_FONT_ALIGN_LEFT;
	this->zRoundTitle->m_AlignVer = IW_2D_FONT_ALIGN_TOP;
	this->zRoundTitle->m_Font = RESOURCE_MANAGER->GetFontNormal();
	this->zRoundTitle->m_ScaleX = game->GetFontScale();// / this->zGraphics_Scale;
	this->zRoundTitle->m_ScaleY = this->zRoundTitle->m_ScaleX;// / this->zGraphics_Scale;

	AddChild(this->zRoundTitle);

	this->zTimeTitle = new CLabel();
	this->zTimeTitle->m_X = 470 * game->GetGraphicsScaleX();
	this->zTimeTitle->m_Y = 230 * game->GetGraphicsScaleY();
	this->zTimeTitle->m_W = FONT_DESIGN_WIDTH;
	this->zTimeTitle->m_H = game->GetActualFontHeight();
	this->zTimeTitle->m_Text = "Time";
	this->zTimeTitle->m_AlignHor = IW_2D_FONT_ALIGN_LEFT;
	this->zTimeTitle->m_AlignVer = IW_2D_FONT_ALIGN_TOP;
	this->zTimeTitle->m_Font = RESOURCE_MANAGER->GetFontNormal();
	this->zTimeTitle->m_ScaleX = game->GetFontScale();// / this->zGraphics_Scale;
	this->zTimeTitle->m_ScaleY = this->zRoundTitle->m_ScaleX;// / this->zGraphics_Scale;

	AddChild(this->zTimeTitle);

	for(int i = 0; i < MAX_SCORES; i++)
	{
		this->zRoundLabel[i] = new CLabel();
		this->zRoundLabel[i]->m_X = 180 * game->GetGraphicsScaleX();
		this->zRoundLabel[i]->m_Y = 230 * game->GetGraphicsScaleY() + 50 * (i + 1) * game->GetGraphicsScaleY();
		this->zRoundLabel[i]->m_W = FONT_DESIGN_WIDTH;
		this->zRoundLabel[i]->m_H = game->GetActualFontHeight();
		this->zRoundLabel[i]->m_Text = "";
		this->zRoundLabel[i]->m_AlignHor = IW_2D_FONT_ALIGN_LEFT;
		this->zRoundLabel[i]->m_AlignVer = IW_2D_FONT_ALIGN_TOP;
		this->zRoundLabel[i]->m_Font = RESOURCE_MANAGER->GetFontBold();
		this->zRoundLabel[i]->m_ScaleX = game->GetFontScale();// / this->zGraphics_Scale;
		this->zRoundLabel[i]->m_ScaleY = this->zRoundLabel[i]->m_ScaleX;// / this->zGraphics_Scale;

		AddChild(this->zRoundLabel[i]);

		this->zTimeLabel[i] = new CLabel();
		this->zTimeLabel[i]->m_X = 510 * game->GetGraphicsScaleX();
		this->zTimeLabel[i]->m_Y = 215 * game->GetGraphicsScaleY() + 50 * (i + 1) * game->GetGraphicsScaleY();
		this->zTimeLabel[i]->m_W = FONT_DESIGN_WIDTH;
		this->zTimeLabel[i]->m_H = game->GetActualFontHeight();
		this->zTimeLabel[i]->m_Text = "";
		this->zTimeLabel[i]->m_AlignHor = IW_2D_FONT_ALIGN_LEFT;
		this->zTimeLabel[i]->m_AlignVer = IW_2D_FONT_ALIGN_TOP;
		this->zTimeLabel[i]->m_Font = RESOURCE_MANAGER->GetFontBold();
		this->zTimeLabel[i]->m_ScaleX = game->GetFontScale();// / this->zGraphics_Scale;
		this->zTimeLabel[i]->m_ScaleY = this->zRoundLabel[i]->m_ScaleX;// / this->zGraphics_Scale;

		AddChild(this->zTimeLabel[i]);
	}

	//Back Button
	this->zBackButton = new CSprite();
	this->zBackButton->m_X = (IwGxGetScreenWidth() / 2) - 150 * game->GetGraphicsScaleX();
	this->zBackButton->m_Y = 990 * game->GetGraphicsScaleY();
	this->zBackButton->SetImage(RESOURCE_MANAGER->GetButtonSmall());
	this->zBackButton->m_AnchorX = 0.5f;
	this->zBackButton->m_AnchorY = 0.0f;
	this->zBackButton->m_ScaleX = game->GetGraphicsScaleX();
	this->zBackButton->m_ScaleY = game->GetGraphicsScaleY();

	AddChild(this->zBackButton);

	this->zBackButtonLabel = new CLabel();
	this->zBackButtonLabel->m_X = this->zBackButton->m_W / 2;
	this->zBackButtonLabel->m_Y = this->zBackButton->m_H / 2;
	this->zBackButtonLabel->m_W = this->zBackButton->m_W;
	this->zBackButtonLabel->m_H = this->zBackButton->m_H;
	this->zBackButtonLabel->m_Text = "Back";
	this->zBackButtonLabel->m_AlignHor = IW_2D_FONT_ALIGN_CENTRE;
	this->zBackButtonLabel->m_AlignVer = IW_2D_FONT_ALIGN_CENTRE;
	this->zBackButtonLabel->m_Font = RESOURCE_MANAGER->GetFontLarge();
	this->zBackButtonLabel->m_AnchorX = 0.5f;
	this->zBackButtonLabel->m_AnchorY = 0.5f;
	this->zBackButtonLabel->m_ScaleX = game->GetFontScale() / game->GetGraphicsScaleX();
	this->zBackButtonLabel->m_ScaleY = game->GetFontScale() / game->GetGraphicsScaleY();

	this->zBackButton->AddChild(this->zBackButtonLabel);

	//Reset Button
	this->zResetButton = new CSprite();
	this->zResetButton->m_X = (IwGxGetScreenWidth() / 2) + 150 * game->GetGraphicsScaleX();
	this->zResetButton->m_Y = 990 * game->GetGraphicsScaleY();
	this->zResetButton->SetImage(RESOURCE_MANAGER->GetButtonSmall());
	this->zResetButton->m_AnchorX = 0.5f;
	this->zResetButton->m_AnchorY = 0.0f;
	this->zResetButton->m_ScaleX = game->GetGraphicsScaleX();
	this->zResetButton->m_ScaleY = game->GetGraphicsScaleY();

	AddChild(this->zResetButton);

	this->zResetButtonLabel = new CLabel();
	this->zResetButtonLabel->m_X = this->zResetButton->m_W / 2;
	this->zResetButtonLabel->m_Y = this->zResetButton->m_H / 2;
	this->zResetButtonLabel->m_W = this->zResetButton->m_W;
	this->zResetButtonLabel->m_H = this->zResetButton->m_H;
	this->zResetButtonLabel->m_Text = "Reset";
	this->zResetButtonLabel->m_AlignHor = IW_2D_FONT_ALIGN_CENTRE;
	this->zResetButtonLabel->m_AlignVer = IW_2D_FONT_ALIGN_CENTRE;
	this->zResetButtonLabel->m_Font = RESOURCE_MANAGER->GetFontLarge();
	this->zResetButtonLabel->m_AnchorX = 0.5f;
	this->zResetButtonLabel->m_AnchorY = 0.5f;
	this->zResetButtonLabel->m_ScaleX = game->GetFontScale() / game->GetGraphicsScaleX();
	this->zResetButtonLabel->m_ScaleY = game->GetFontScale() / game->GetGraphicsScaleY();

	this->zResetButton->AddChild(this->zResetButtonLabel);
}

void HighscoreScreen::Update( float pDeltaTime /* = 0.0f */, float pAlphaMul /* = 1.0f */ )
{
	if(!this->zIsActive)
		return;

	Scene::Update(pDeltaTime, pAlphaMul);

	Game* game = (Game*)SCENE_MANAGER->Find("game");

	Highscore* highscore = game->GetHighscore();

	std::vector<Score*> scorelist = highscore->GetScoreList();

	for(int i = 0; i < MAX_SCORES; i++)
	{
		this->zRoundLabel[i]->SetText("");
		this->zTimeLabel[i]->SetText("");
	}


	for (int i = 0; i < (int)scorelist.size(); i++)
	{
		char str[32];

		int round = scorelist[i]->GetRound();
		snprintf(str, 32, "%d", round);
		this->zRoundLabel[i]->SetText(str);

		float time = scorelist[i]->GetTime();

		int minute = 0;
		int hour = 0;
		int seconds = 0;
		
		TimeHelper::CalcTime(hour, minute, seconds, (int)time);

		std::string text;
		this->CreateTimeText(hour, minute, seconds, text);

		this->zTimeLabel[i]->SetText(text);
	}

	//Detect screen tap
	if(this->zIsInputActive && SCENE_MANAGER->GetCurrentScene() == this)
	{
		if(!INPUT_MANAGER->GetTouchedStatus() && INPUT_MANAGER->GetPrevTouchedStatus())
		{
			// Reset input
			INPUT_MANAGER->Reset();
			if(this->zBackButton->HitTest(INPUT_MANAGER->GetX_Position(), INPUT_MANAGER->GetY_Position()))
			{
				this->zTweener.Tween(0.2f,
					DELAY, 0.25f,
					ONCOMPLETE, ExitHighscore,
					END);
			}
			if(this->zResetButton->HitTest(INPUT_MANAGER->GetX_Position(), INPUT_MANAGER->GetY_Position()))
			{
				this->zTweener.Tween(0.2f,
					DELAY, 0.25f,
					ONCOMPLETE, ResetScore,
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

void HighscoreScreen::CreateTimeText( int hour, int minute, int seconds, std::string& text )
{
	char str[32];

	if(hour > 0)
	{
		if(hour < 10)
			text = "0";

		snprintf(str, 32, "%d", (int)hour);
		text += str;
		text += ":";
	}
	if(minute > 0)
	{
		if(minute < 10)
			text += "0";

		snprintf(str, 32, "%d", (int)minute);
		text += str;
		text += ":";
	}
	if(seconds < 10)
		text += "0";

	snprintf(str, 32, "%d", (int)seconds);
	text += str;
}

void HighscoreScreen::ExitHighscore( CTween* pTween )
{
	Scene* prevScene = SCENE_MANAGER->GetPreviousScene();

	SCENE_MANAGER->SwitchTo(prevScene);
}

void HighscoreScreen::ResetScore( CTween* pTween )
{
	Game* game = (Game*)SCENE_MANAGER->Find("game");

	Highscore* highscore = game->GetHighscore();
	highscore->ResetScore();
}

void HighscoreScreen::OnBackKeyPress()
{
	this->zTweener.Tween(0.5f,
		ONCOMPLETE, ExitHighscore, 
		END);
}

void HighscoreScreen::OnPause()
{
	this->zIsActive = false;
}

void HighscoreScreen::OnResume()
{
	this->zIsActive = true;
}
