#include "ScenePauseMenu.h"

#include "SceneHighscoreScreen.h"
#include "SceneGame.h"
#include "Input.h"
#include "Audio.h"
#include "Resource.h"
#include "IwGx.h"
#include "SceneMainMenu.h"

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
	//Switch to game mode Scene
	MainMenu* gameMode = (MainMenu*)GetSceneManager()->Find("mainmenu");
	GetSceneManager()->SwitchTo(gameMode);
}

void PauseMenu::ResumeGame( CTween* pTween )
{
	//Switch to game Scene
	Game* game = (Game*)GetSceneManager()->Find("game");
	GetSceneManager()->SwitchTo(game);
}

void PauseMenu::ExitGame( CTween* pTween )
{
	Game* game = (Game*)GetSceneManager()->Find("game");
	game->SaveHighscore();

	GetSceneManager()->QuitGame();
}

void PauseMenu::ShowHighscore( CTween* pTween )
{
	HighscoreScreen* highscore = (HighscoreScreen*)GetSceneManager()->Find("highscore");

	GetSceneManager()->SwitchTo(highscore);
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

	this->zNewGameButton = new CSprite();
	this->zNewGameButton->m_X = (IwGxGetScreenWidth() / 2.0f);
	this->zNewGameButton->m_Y = (IwGxGetScreenHeight() / 2) - GetResource()->GetButton()->GetHeight() * game->GetGraphicsScaleY() * 2.0f;
	this->zNewGameButton->SetImage(GetResource()->GetButton());
	this->zNewGameButton->m_AnchorX = 0.5f;
	this->zNewGameButton->m_AnchorY = 0.5f;
	this->zNewGameButton->m_ScaleX = game->GetGraphicsScaleX();
	this->zNewGameButton->m_ScaleY = game->GetGraphicsScaleY();

	AddChild(this->zNewGameButton);

	CLabel* newGameLabel = new CLabel();
	newGameLabel->m_X = this->zNewGameButton->m_W / 2;
	newGameLabel->m_Y = this->zNewGameButton->m_H / 2;
	newGameLabel->m_W = this->zNewGameButton->m_W;
	newGameLabel->m_H = this->zNewGameButton->m_H;
	newGameLabel->m_AnchorX = 0.5f;
	newGameLabel->m_AnchorY = 0.5f;
	newGameLabel->m_AlignHor = IW_2D_FONT_ALIGN_CENTRE;
	newGameLabel->m_AlignVer = IW_2D_FONT_ALIGN_CENTRE;
	newGameLabel->m_ScaleX = game->GetFontScale() / game->GetGraphicsScaleX();
	newGameLabel->m_ScaleY = game->GetFontScale() / game->GetGraphicsScaleY();
	newGameLabel->m_Font = GetResource()->GetFontLarge();
	newGameLabel->m_Text = "New Game";

	this->zNewGameButton->AddChild(newGameLabel);

	this->zResumeGameButton = new CSprite();
	this->zResumeGameButton->m_X = (IwGxGetScreenWidth() / 2.0f);
	this->zResumeGameButton->m_Y = (IwGxGetScreenHeight() / 2) - GetResource()->GetButton()->GetHeight() * game->GetGraphicsScaleY() * 0.5f;
	this->zResumeGameButton->SetImage(GetResource()->GetButton());
	this->zResumeGameButton->m_AnchorX = 0.5f;
	this->zResumeGameButton->m_AnchorY = 0.5f;
	this->zResumeGameButton->m_ScaleX = game->GetGraphicsScaleX();
	this->zResumeGameButton->m_ScaleY = game->GetGraphicsScaleY();

	AddChild(this->zResumeGameButton);

	CLabel* resumeGameLabel = new CLabel();
	resumeGameLabel->m_X = this->zResumeGameButton->m_W / 2;
	resumeGameLabel->m_Y = this->zResumeGameButton->m_H / 2;
	resumeGameLabel->m_W = this->zResumeGameButton->m_W;
	resumeGameLabel->m_H = this->zResumeGameButton->m_H;
	resumeGameLabel->m_AnchorX = 0.5f;
	resumeGameLabel->m_AnchorY = 0.5f;
	resumeGameLabel->m_AlignHor = IW_2D_FONT_ALIGN_CENTRE;
	resumeGameLabel->m_AlignVer = IW_2D_FONT_ALIGN_CENTRE;
	resumeGameLabel->m_ScaleX = game->GetFontScale() / game->GetGraphicsScaleX();
	resumeGameLabel->m_ScaleY = game->GetFontScale() / game->GetGraphicsScaleY();
	resumeGameLabel->m_Font = GetResource()->GetFontLarge();
	resumeGameLabel->m_Text = "Resume Game";

	this->zResumeGameButton->AddChild(resumeGameLabel);

	this->zExitGameButton = new CSprite();
	this->zExitGameButton->m_X = (IwGxGetScreenWidth() / 2.0f);
	this->zExitGameButton->m_Y = (IwGxGetScreenHeight() / 2) + GetResource()->GetButton()->GetHeight() * game->GetGraphicsScaleY() * 2.5f;
	this->zExitGameButton->SetImage(GetResource()->GetButton());
	this->zExitGameButton->m_AnchorX = 0.5f;
	this->zExitGameButton->m_AnchorY = 0.5f;
	this->zExitGameButton->m_ScaleX = game->GetGraphicsScaleX();
	this->zExitGameButton->m_ScaleY = game->GetGraphicsScaleY();

	AddChild(this->zExitGameButton);

	CLabel* exitGameLabel = new CLabel();
	exitGameLabel->m_X = this->zExitGameButton->m_W / 2;
	exitGameLabel->m_Y = this->zExitGameButton->m_H / 2;
	exitGameLabel->m_W = this->zExitGameButton->m_W;
	exitGameLabel->m_H = this->zExitGameButton->m_H;
	exitGameLabel->m_AnchorX = 0.5f;
	exitGameLabel->m_AnchorY = 0.5f;
	exitGameLabel->m_AlignHor = IW_2D_FONT_ALIGN_CENTRE;
	exitGameLabel->m_AlignVer = IW_2D_FONT_ALIGN_CENTRE;
	exitGameLabel->m_ScaleX = game->GetFontScale() / game->GetGraphicsScaleX();
	exitGameLabel->m_ScaleY = game->GetFontScale() / game->GetGraphicsScaleY();
	exitGameLabel->m_Font = GetResource()->GetFontLarge();
	exitGameLabel->m_Text = "Exit Game";

	this->zExitGameButton->AddChild(exitGameLabel);

	this->zHighscoreButton = new CSprite();
	this->zHighscoreButton->m_X = (IwGxGetScreenWidth() / 2.0f);
	this->zHighscoreButton->m_Y = (IwGxGetScreenHeight() / 2) + GetResource()->GetButton()->GetHeight() * game->GetGraphicsScaleY() * 1.0f;
	this->zHighscoreButton->SetImage(GetResource()->GetButton());
	this->zHighscoreButton->m_AnchorX = 0.5f;
	this->zHighscoreButton->m_AnchorY = 0.5f;
	this->zHighscoreButton->m_ScaleX = game->GetGraphicsScaleX();
	this->zHighscoreButton->m_ScaleY = game->GetGraphicsScaleY();

	AddChild(this->zHighscoreButton);

	CLabel* highscoreLabel = new CLabel();
	highscoreLabel->m_X = this->zHighscoreButton->m_W / 2;
	highscoreLabel->m_Y = this->zHighscoreButton->m_H / 2;
	highscoreLabel->m_W = this->zHighscoreButton->m_W;
	highscoreLabel->m_H = this->zHighscoreButton->m_H;
	highscoreLabel->m_AnchorX = 0.5f;
	highscoreLabel->m_AnchorY = 0.5f;
	highscoreLabel->m_AlignHor = IW_2D_FONT_ALIGN_CENTRE;
	highscoreLabel->m_AlignVer = IW_2D_FONT_ALIGN_CENTRE;
	highscoreLabel->m_ScaleX = game->GetFontScale() / game->GetGraphicsScaleX();
	highscoreLabel->m_ScaleY = game->GetFontScale() / game->GetGraphicsScaleY();
	highscoreLabel->m_Font = GetResource()->GetFontLarge();
	highscoreLabel->m_Text = "Highscore";

	this->zHighscoreButton->AddChild(highscoreLabel);
}

void PauseMenu::Update( float pDeltaTime /* = 0.0f */, float pAlphaMul /* = 1.0f */ )
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
			if(this->zNewGameButton->HitTest(GetInput()->GetX_Position(), GetInput()->GetY_Position()))
			{
				this->zTweener.Tween(0.15f,
					DELAY, 0.1f,
					ONCOMPLETE, NewGame,
					END);
			}
			else if(this->zResumeGameButton->HitTest(GetInput()->GetX_Position(), GetInput()->GetY_Position()))
			{
				this->zTweener.Tween(0.15f,
					DELAY, 0.1f,
					ONCOMPLETE, ResumeGame,
					END);
			}
			else if(this->zExitGameButton->HitTest(GetInput()->GetX_Position(), GetInput()->GetY_Position()))
			{
				this->zTweener.Tween(0.2f,
					ONCOMPLETE, ExitGame,
					END);
			}
			else if(this->zHighscoreButton->HitTest(GetInput()->GetX_Position(), GetInput()->GetY_Position()))
			{
				this->zTweener.Tween(0.15f,
					DELAY, 0.1f,
					ONCOMPLETE, ShowHighscore,
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
}

void PauseMenu::OnBackKeyPress()
{
	this->zTweener.Tween(0.2f,
		DELAY, 0.25f,
		ONCOMPLETE, ExitGame,
		END);
}

void PauseMenu::OnPause()
{
	this->zIsActive = false;
}

void PauseMenu::OnResume()
{
	this->zIsActive = true;
}