#include "ScenePauseMenu.h"

#include "SceneHighscoreScreen.h"
#include "SceneGame.h"
#include "Input.h"
#include "Resource.h"
#include "IwGx.h"
#include "SceneMainMenu.h"
#include "Ads.h"

using namespace Iw2DSceneGraph;

PauseMenu::PauseMenu()
{
	this->zNewGameButton = 0;
	this->zMainMenuButton = 0;
	this->zExitGameButton = 0;
	this->zResumeGameButton = 0;
}

PauseMenu::~PauseMenu()
{

}

void PauseMenu::Init()
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

	this->zNewGameButton = new CSprite();
	this->zNewGameButton->m_X = (IwGxGetScreenWidth() / 2.0f);
	this->zNewGameButton->m_Y = 300.0f * game->GetGraphicsScaleY();
	this->zNewGameButton->SetImage(RESOURCE_MANAGER->GetButton());
	this->zNewGameButton->m_AnchorX = 0.5f;
	this->zNewGameButton->m_AnchorY = 0.0f;
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
	newGameLabel->m_Font = RESOURCE_MANAGER->GetFontLarge();
	newGameLabel->m_Text = "New Game";

	this->zNewGameButton->AddChild(newGameLabel);

	this->zResumeGameButton = new CSprite();
	this->zResumeGameButton->m_X = (IwGxGetScreenWidth() / 2.0f);
	this->zResumeGameButton->m_Y = 300.0f * game->GetGraphicsScaleY() + RESOURCE_MANAGER->GetButton()->GetHeight() * game->GetGraphicsScaleY() * 1.5f;
	this->zResumeGameButton->SetImage(RESOURCE_MANAGER->GetButton());
	this->zResumeGameButton->m_AnchorX = 0.5f;
	this->zResumeGameButton->m_AnchorY = 0.0f;
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
	resumeGameLabel->m_Font = RESOURCE_MANAGER->GetFontLarge();
	resumeGameLabel->m_Text = "Resume Game";

	this->zResumeGameButton->AddChild(resumeGameLabel);

	this->zMainMenuButton = new CSprite();
	this->zMainMenuButton->m_X = (IwGxGetScreenWidth() / 2.0f);
	this->zMainMenuButton->m_Y = 300.0f * game->GetGraphicsScaleY() + RESOURCE_MANAGER->GetButton()->GetHeight() * game->GetGraphicsScaleY() * 3.0f;
	this->zMainMenuButton->SetImage(RESOURCE_MANAGER->GetButton());
	this->zMainMenuButton->m_AnchorX = 0.5f;
	this->zMainMenuButton->m_AnchorY = 0.0f;
	this->zMainMenuButton->m_ScaleX = game->GetGraphicsScaleX();
	this->zMainMenuButton->m_ScaleY = game->GetGraphicsScaleY();

	AddChild(this->zMainMenuButton);

	CLabel* mainmenuLabel = new CLabel();
	mainmenuLabel->m_X = this->zMainMenuButton->m_W / 2;
	mainmenuLabel->m_Y = this->zMainMenuButton->m_H / 2;
	mainmenuLabel->m_W = this->zMainMenuButton->m_W;
	mainmenuLabel->m_H = this->zMainMenuButton->m_H;
	mainmenuLabel->m_AnchorX = 0.5f;
	mainmenuLabel->m_AnchorY = 0.5f;
	mainmenuLabel->m_AlignHor = IW_2D_FONT_ALIGN_CENTRE;
	mainmenuLabel->m_AlignVer = IW_2D_FONT_ALIGN_CENTRE;
	mainmenuLabel->m_ScaleX = game->GetFontScale() / game->GetGraphicsScaleX();
	mainmenuLabel->m_ScaleY = game->GetFontScale() / game->GetGraphicsScaleY();
	mainmenuLabel->m_Font = RESOURCE_MANAGER->GetFontLarge();
	mainmenuLabel->m_Text = "Main Menu";

	this->zMainMenuButton->AddChild(mainmenuLabel);

	this->zExitGameButton = new CSprite();
	this->zExitGameButton->m_X = (IwGxGetScreenWidth() / 2.0f);
	this->zExitGameButton->m_Y = 300.0f * game->GetGraphicsScaleY() + RESOURCE_MANAGER->GetButton()->GetHeight() * game->GetGraphicsScaleY() * 4.5f;
	this->zExitGameButton->SetImage(RESOURCE_MANAGER->GetButton());
	this->zExitGameButton->m_AnchorX = 0.5f;
	this->zExitGameButton->m_AnchorY = 0.0f;
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
	exitGameLabel->m_Font = RESOURCE_MANAGER->GetFontLarge();
	exitGameLabel->m_Text = "Exit Game";

	this->zExitGameButton->AddChild(exitGameLabel);
}

void PauseMenu::Update( float pDeltaTime /* = 0.0f */, float pAlphaMul /* = 1.0f */ )
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
			if(this->zNewGameButton->HitTest(INPUT_MANAGER->GetX_Position(), INPUT_MANAGER->GetY_Position()))
			{
				//Switch to game Scene
				Game* game = (Game*)SCENE_MANAGER->Find("game");
				game->New_Game();

				SCENE_MANAGER->SwitchTo(game);
			}
			else if(this->zResumeGameButton->HitTest(INPUT_MANAGER->GetX_Position(), INPUT_MANAGER->GetY_Position()))
			{	
				//Switch to game Scene
				Game* game = (Game*)SCENE_MANAGER->Find("game");
				SCENE_MANAGER->SwitchTo(game);
			}
			else if(this->zMainMenuButton->HitTest(INPUT_MANAGER->GetX_Position(), INPUT_MANAGER->GetY_Position()))
			{
				//Switch to main menu Scene
				MainMenu* mainmenu = (MainMenu*)SCENE_MANAGER->Find("mainmenu");
				SCENE_MANAGER->SwitchTo(mainmenu);
			}
			else if(this->zExitGameButton->HitTest(INPUT_MANAGER->GetX_Position(), INPUT_MANAGER->GetY_Position()))
			{
				Game* game = (Game*)SCENE_MANAGER->Find("game");
				game->SaveHighscore();

				SCENE_MANAGER->QuitGame();
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
	ADVERT_MANAGER->Hide();

	Game* game = (Game*)SCENE_MANAGER->Find("game");
	game->SaveHighscore();

	SCENE_MANAGER->QuitGame();
}

void PauseMenu::OnPause()
{
	this->zIsActive = false;
}

void PauseMenu::OnResume()
{
	this->zIsActive = true;
}

void PauseMenu::OnSwap()
{
	ADVERT_MANAGER->Show();
}