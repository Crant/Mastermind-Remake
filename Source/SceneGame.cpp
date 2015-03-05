#include "SceneGame.h"

#include "ScenePauseMenu.h"
#include "SceneMainMenu.h"
#include "Input.h"
#include "Resource.h"
#include "IwGx.h"
#include "Ads.h"

using namespace Iw2DSceneGraph;

#define MARBLE_START_Y 128.0f

enum MARBLE_COLOR
{
	MARBLE_COLOR_YELLOW,
	MARBLE_COLOR_PURPLE,
	MARBLE_COLOR_RED,
	MARBLE_COLOR_GREEN,
	MARBLE_COLOR_BLUE
};

Game::Game()
{
	srand((unsigned)(time(0)));

	this->zPins = 0;
	this->zGrid = 0;
	this->zArrow = 0;
	this->zAnswers = 0;
	this->zCheckButton = 0;
	this->zColorChoices = 0;
	this->zSelectedRect = 0;
	this->zSelectedMarble = 0;
	this->zFinalLabel = 0;
	this->zGametimeLabel = 0;
	this->zBackground = 0;

	this->zCurrentGametimeSec = 0;

	this->zMaxRounds = NORMAL;
	this->zGameMode = GAME_MODE_SINGLE;
	this->zGameState = GAME_STATE_PLAYING;

	this->zCurrentRound = 0;

	this->zHighscore = 0;
}

Game::~Game()
{
	for(int i = 0; i < COLS; i++)
	{
		SAFE_DELETE(this->zAnswers[i]);
	}
	SAFE_DELETE_ARRAY(this->zAnswers);

	for (int i = 0; i < COLS; i++)
	{
		for(int j = 0; j < this->zMaxRounds; j++)
		{
			SAFE_DELETE(this->zGrid[i][j]);
		}
		SAFE_DELETE_ARRAY(this->zGrid[i]);
	}
	SAFE_DELETE_ARRAY(this->zGrid);
	

	for(int i = 0; i < COLORS; i++)
	{
		SAFE_DELETE(this->zColorChoices[i]);
	}
	SAFE_DELETE_ARRAY(this->zColorChoices);
	
	SAFE_DELETE(this->zArrow);

	SAFE_DELETE(this->zCheckButton);


	for (int i = 0; i < COLS; i++)
	{
		for(int j = 0; j < this->zMaxRounds; j++)
		{
			SAFE_DELETE(this->zPins[i][j]);
		}
		SAFE_DELETE_ARRAY(this->zPins[i]);
	}
	SAFE_DELETE_ARRAY(this->zPins);

	SAFE_DELETE(this->zFinalLabel);

	this->zHighscore->SaveHighscore();
	SAFE_DELETE(this->zHighscore);
}

void Game::Init()
{
	Scene::Init();

	this->zGraphics_ScaleX = (float)IwGxGetScreenWidth() / GRAPHIC_DESIGN_WIDTH;
	this->zGraphics_ScaleY = (float)IwGxGetScreenHeight() / GRAPHIC_DESIGN_HEIGHT;

	this->zFont_Scale = (float)IwGxGetScreenWidth() / FONT_DESIGN_WIDTH;
	this->zActualFontHeight = FONT_HEIGHT * this->zFont_Scale;
	
	//Initialize UI
	this->zBackground = new CSprite();
	this->zBackground->m_X = (float)IwGxGetScreenWidth() / 2;
	this->zBackground->m_Y = (float)IwGxGetScreenHeight() / 2;
	this->zBackground->SetImage(RESOURCE_MANAGER->GetGameBG());
	this->zBackground->m_W = this->zBackground->GetImage()->GetWidth();
	this->zBackground->m_H = this->zBackground->GetImage()->GetHeight();
	this->zBackground->m_AnchorX = 0.5f;
	this->zBackground->m_AnchorY = 0.5f;
	// Fit background to screen size
	this->zBackground->m_ScaleX = (float)IwGxGetScreenWidth() / this->zBackground->GetImage()->GetWidth();
	this->zBackground->m_ScaleY = (float)IwGxGetScreenHeight() / this->zBackground->GetImage()->GetHeight();
	
	AddChild(this->zBackground);

	this->zFinalLabel = new CLabel();
	this->zFinalLabel->m_X = (float)IwGxGetScreenWidth() / 2.0f;
	this->zFinalLabel->m_Y = 545 * this->zGraphics_ScaleY;
	//this->zFinalLabel->m_W = FONT_DESIGN_WIDTH;
	//this->zFinalLabel->m_H = this->zActualFontHeight;
	this->zFinalLabel->m_AlignHor = IW_2D_FONT_ALIGN_LEFT;
	this->zFinalLabel->m_AlignVer = IW_2D_FONT_ALIGN_TOP;
	this->zFinalLabel->m_Font = RESOURCE_MANAGER->GetFontBold();
	this->zFinalLabel->m_ScaleX = this->zFont_Scale;
	this->zFinalLabel->m_ScaleY = this->zFont_Scale;
	this->zFinalLabel->m_AnchorX = 0.5f;
	this->zFinalLabel->m_AnchorY = 0.5f;
	this->zFinalLabel->m_Color = CColor(0, 0, 0, 255);

	// Total Height * scale - Req Height * scale
	this->zY_Spacing = (885 - RESOURCE_MANAGER->GetMarble()->GetHeight() * this->zMaxRounds) * this->zGraphics_ScaleY;
	this->zY_Spacing /= this->zMaxRounds - 1;
	this->zY_Spacing = this->zY_Spacing < 0.0f ? 0.0f : this->zY_Spacing;

	this->zHighscore = new Highscore();
	this->zHighscore->LoadHighscore();
}

void Game::New_Game()
{
	this->zCurrentRound = 0;
	this->zCurrentGametimeSec = 0.0f;

	float marbleStartX = 108.0f;

	float checkButtonStartX = 538.0f;
	float pinStart = 621.0f;
	float arrowStart = 45.0f;

	this->zFinalLabel->m_Text = "";
	this->zFinalLabel->m_IsVisible = false;

	if(this->zGametimeLabel == 0)
	{
		this->zGametimeLabel = new CLabel();
		this->zGametimeLabel->m_X = -20 * this->zGraphics_ScaleX;
		this->zGametimeLabel->m_Y = 10 * this->zGraphics_ScaleY;
		this->zGametimeLabel->m_W = FONT_DESIGN_WIDTH;
		this->zGametimeLabel->m_H = this->zActualFontHeight;
		
		this->zGametimeLabel->m_AlignHor = IW_2D_FONT_ALIGN_RIGHT;
		this->zGametimeLabel->m_AlignVer = IW_2D_FONT_ALIGN_TOP;
		this->zGametimeLabel->m_Font = RESOURCE_MANAGER->GetFontNormal();
		this->zGametimeLabel->m_ScaleX = this->zFont_Scale;// / this->zGraphics_Scale;
		this->zGametimeLabel->m_ScaleY = this->zFont_Scale;// / this->zGraphics_Scale;
		this->zGametimeLabel->m_Color = CColor(0, 0, 0, 255);
	}
	char str[32];
	snprintf(str, 32, "%f", (float)this->zY_Spacing);
	this->zGametimeLabel->m_Text = str;//"";
	AddChild(this->zGametimeLabel);

	if(this->zGrid)
	{
		for (int i = 0; i < COLS; i++)
		{
			for(int j = 0; j < this->zMaxRounds; j++)
			{
				if(this->zGrid[i][j])
					delete this->zGrid[i][j];
			}
			delete [] this->zGrid[i];
		}

		delete [] this->zGrid;
	}

	this->zGrid = new Image**[COLS];

	for(int i = 0; i < COLS; i++)
	{
		this->zGrid[i] = new Image*[this->zMaxRounds];
	
		for(int j = this->zMaxRounds - 1; j >= 0; j--)
		{
			this->zGrid[i][j] = new Image();
			this->zGrid[i][j]->m_X = marbleStartX * this->zGraphics_ScaleX + (float)(i * RESOURCE_MANAGER->GetMarbleBG()->GetWidth() * this->zGraphics_ScaleX);
			this->zGrid[i][j]->m_Y = (MARBLE_START_Y * this->zGraphics_ScaleY) + (this->zMaxRounds - (j + 1)) * (RESOURCE_MANAGER->GetMarbleBG()->GetHeight() * this->zGraphics_ScaleY + this->zY_Spacing);

			this->zGrid[i][j]->SetImage(RESOURCE_MANAGER->GetMarbleBG());
			this->zGrid[i][j]->m_ScaleX = this->zGraphics_ScaleX;
			this->zGrid[i][j]->m_ScaleY = this->zGraphics_ScaleX;
		}
	}

	if(this->zColorChoices)
	{
		for(int i = 0; i < COLORS; i++)
		{
			if(this->zColorChoices[i])
				delete this->zColorChoices[i];
		}
		delete [] this->zColorChoices;
	}
	static Iw2DSceneGraph::CColor col[COLORS] = 
	{
		CColor(255, 0, 255, 255), //Yellow
		CColor(255, 255, 0, 255), //Purple
		CColor(255, 0, 0, 255), //Red
		CColor(0, 255, 0, 255), //Green
		CColor(0, 100, 255, 255) //Blue
	};

	this->zColorChoices = new Image*[COLORS];
	for(int i = 0; i < COLORS; i++)
	{
		this->zColorChoices[i] = new Image();
		this->zColorChoices[i]->m_X = marbleStartX * this->zGraphics_ScaleX + (i * RESOURCE_MANAGER->GetMarble()->GetWidth() * this->zGraphics_ScaleX);
		this->zColorChoices[i]->m_Y = (float)IwGxGetScreenHeight() - RESOURCE_MANAGER->GetMarble()->GetHeight() * this->zGraphics_ScaleY;
		this->zColorChoices[i]->SetImage(RESOURCE_MANAGER->GetMarble());
		this->zColorChoices[i]->m_ScaleX = this->zGraphics_ScaleX;
		this->zColorChoices[i]->m_ScaleY = this->zGraphics_ScaleY;
		this->zColorChoices[i]->m_Color = col[i];
	}

	if(this->zPins)
	{
		for (int i = 0; i < COLS; i++)
		{
			for(int j = 0; j < this->zMaxRounds; j++)
			{
				if(this->zPins[i][j])
					delete this->zPins[i][j];
			}
			delete [] this->zPins[i];
		}
		delete [] this->zPins;
	}

	this->zPins = new Image**[COLS];

	for(int i = 0; i < COLS; i++)
	{
		this->zPins[i] = new Image*[this->zMaxRounds];

		for(int j = this->zMaxRounds - 1; j >= 0; j--)
		{
			this->zPins[i][j] = new Image();
			this->zPins[i][j]->m_X = pinStart * this->zGraphics_ScaleX;
			this->zPins[i][j]->m_Y = (MARBLE_START_Y * this->zGraphics_ScaleY) + (this->zMaxRounds - (j + 1)) * (RESOURCE_MANAGER->GetMarble()->GetHeight() * this->zGraphics_ScaleY + this->zY_Spacing);
		
			if(i < 3)
			{
				this->zPins[i][j]->m_X += ((i) * RESOURCE_MANAGER->GetPin()->GetWidth() * this->zGraphics_ScaleX);
			}
			else
			{
				this->zPins[i][j]->m_X += ((i - 3 + 0.5f) * RESOURCE_MANAGER->GetPin()->GetWidth() * this->zGraphics_ScaleX);
				this->zPins[i][j]->m_Y += RESOURCE_MANAGER->GetPin()->GetHeight() * this->zGraphics_ScaleY;
			}

			this->zPins[i][j]->SetImage(RESOURCE_MANAGER->GetPinBG());

			this->zPins[i][j]->m_ScaleX = this->zGraphics_ScaleX;
			this->zPins[i][j]->m_ScaleY = this->zGraphics_ScaleX;
		}
	}

	if(this->zArrow)
		delete this->zArrow;

	this->zArrow = new Image();
	this->zArrow->m_X = arrowStart * this->zGraphics_ScaleX;

	if(this->zGameMode == GAME_MODE_MULTI)
	{
		this->zArrow->m_Y = 0.5f * RESOURCE_MANAGER->GetMarble()->GetHeight() * this->zGraphics_ScaleX;
	}
	else
	{
		this->zArrow->m_Y = (MARBLE_START_Y * this->zGraphics_ScaleY) + RESOURCE_MANAGER->GetMarble()->GetHeight() * (this->zMaxRounds - 0.0f) * this->zGraphics_ScaleY - this->zY_Spacing;
	}

	this->zArrow->m_AnchorY = 0.5f;
	this->zArrow->SetImage(RESOURCE_MANAGER->GetArrow());
	this->zArrow->m_ScaleX = this->zGraphics_ScaleX;
	this->zArrow->m_ScaleY = this->zGraphics_ScaleX;

	if(this->zCheckButton)
		delete this->zCheckButton;

	this->zCheckButton = new Image();
	this->zCheckButton->m_X = checkButtonStartX * this->zGraphics_ScaleX;
	
	this->zCheckButton->SetImage(RESOURCE_MANAGER->GetCheckButton());
	this->zCheckButton->m_ScaleX = this->zGraphics_ScaleX;
	this->zCheckButton->m_ScaleY = this->zGraphics_ScaleX;
	this->zCheckButton->SetVisibility(false);
	this->zCheckButton->m_AnchorY = 0.5f;
	if(this->zGameMode == GAME_MODE_MULTI)
	{
		this->zCheckButton->m_Y = 0.5f * RESOURCE_MANAGER->GetMarble()->GetHeight() * this->zGraphics_ScaleX;
	}
	else
	{
		this->zCheckButton->m_Y = (MARBLE_START_Y * this->zGraphics_ScaleY) + RESOURCE_MANAGER->GetMarble()->GetHeight() * (this->zMaxRounds - 0.0f) * this->zGraphics_ScaleY - this->zY_Spacing;
	}

	if(this->zAnswers)
	{
		for(int i = 0; i < COLS; i++)
		{
			if(this->zAnswers[i])
				delete this->zAnswers[i];
		}
		delete [] this->zAnswers;
	}
	this->zAnswers = new Image*[COLS];

	for(int i = 0; i < COLS; i++)
	{
		this->zAnswers[i] = new Image();
		this->zAnswers[i]->m_X = marbleStartX * this->zGraphics_ScaleX + (float)(i * RESOURCE_MANAGER->GetMarble()->GetWidth() * this->zGraphics_ScaleX);
		this->zAnswers[i]->m_Y = 0.0f;
		this->zAnswers[i]->m_ScaleX = this->zGraphics_ScaleX;
		this->zAnswers[i]->m_ScaleY = this->zGraphics_ScaleX;

		if(this->zGameMode == GAME_MODE_SINGLE)
		{
			this->zAnswers[i]->SetImage(RESOURCE_MANAGER->GetMarble());	
			this->zAnswers[i]->m_Color = this->GetRandomColor();
		}
		else
		{
			this->zAnswers[i]->SetImage(RESOURCE_MANAGER->GetMarbleBG());
		}
	}
}

void Game::UpdateGameTimer( float pDeltaTime, float pAlphaMul )
{
	this->zCurrentGametimeSec += pDeltaTime;

	int minute = 0;
	int hour = 0;
	int seconds = 0;

	TimeHelper::CalcTime(hour, minute, seconds, (int)this->zCurrentGametimeSec);

	std::string text;
	this->CreateTimeText(hour, minute, seconds, text);

	this->zGametimeLabel->m_Text = text;
}

void Game::UpdateGameObjects(float pDeltaTime, float pAlphaMul)
{
	if(this->zGameState == GAME_STATE_VICTORY || this->zGameState == GAME_STATE_GAMEOVER)
	{
		for(int i = 0; i < COLS; i++)
		{
			this->zAnswers[i]->Update(pDeltaTime, pAlphaMul);
		}

		this->zFinalLabel->Update(pDeltaTime, pAlphaMul);
	}
	else if(this->zGameState == GAME_STATE_PICKING_ANSWERS)
	{
		for(int i = 0; i < COLS; i++)
		{
			this->zAnswers[i]->Update(pDeltaTime, pAlphaMul);
		}

		this->zArrow->Update(pDeltaTime, pAlphaMul);

		this->zCheckButton->Update(pDeltaTime, pAlphaMul);
	}
	else if(this->zGameState == GAME_STATE_PLAYING)
	{
		this->zArrow->Update(pDeltaTime, pAlphaMul);
		this->CountChoosenMarbles();

		this->zCheckButton->Update(pDeltaTime, pAlphaMul);
	}

	for(int i = 0; i < COLS; i++)
	{
		for (int j = 0; j < this->zMaxRounds; j++)
		{
			if(this->zGrid[i][j] != 0)
				this->zGrid[i][j]->Update(pDeltaTime, pAlphaMul);

			this->zPins[i][j]->Update(pDeltaTime, pAlphaMul);
		}
	}

	for(int i = 0; i < COLORS; i++)
	{
		this->zColorChoices[i]->Update(pDeltaTime, pAlphaMul);
	}
}

void Game::CheckInput()
{
	// Reset input
	INPUT_MANAGER->Reset();
	if (this->zGameState == GAME_STATE_PICKING_ANSWERS)
	{
		for(int i = 0; i < COLORS; i++)
		{
			if(this->zColorChoices[i]->HitTest(INPUT_MANAGER->GetX_Position(), INPUT_MANAGER->GetY_Position()))
			{
				if(this->zSelectedMarble != 0)
					this->zSelectedMarble->SetImage(RESOURCE_MANAGER->GetMarble());

				this->zSelectedMarble = this->zColorChoices[i];
				this->zColorChoices[i]->SetImage(RESOURCE_MANAGER->GetMarbleSelected());
			}
		}
		//Require that user selects a color first
		if(this->zSelectedMarble != 0)
		{
			for(int i = 0; i < COLS; i++)
			{
				if(this->zAnswers[i]->HitTest(INPUT_MANAGER->GetX_Position(), INPUT_MANAGER->GetY_Position()))
				{
					this->zSelectedRect = this->zAnswers[i];
				}
			}
		}

		if(this->zCheckButton->IsVisible())
		{
			if(this->zCheckButton->HitTest(INPUT_MANAGER->GetX_Position(), INPUT_MANAGER->GetY_Position()))
			{
				this->zSelectedMarble->SetImage(RESOURCE_MANAGER->GetMarble());
				this->zSelectedMarble = 0;

				this->SetupGame();
			}
		}
	}
	else if(this->zGameState == GAME_STATE_PLAYING)
	{
		for(int i = 0; i < COLORS; i++)
		{
			if(this->zColorChoices[i]->HitTest(INPUT_MANAGER->GetX_Position(), INPUT_MANAGER->GetY_Position()))
			{
				if(this->zSelectedMarble != 0)
					this->zSelectedMarble->SetImage(RESOURCE_MANAGER->GetMarble());

				this->zSelectedMarble = this->zColorChoices[i];
				this->zColorChoices[i]->SetImage(RESOURCE_MANAGER->GetMarbleSelected());
			}
		}
		//Require that user selects a color first
		if(this->zSelectedMarble != 0)
		{
			for(int i = 0; i < COLS; i++)
			{
				if(this->zGrid[i][this->zCurrentRound]->HitTest(INPUT_MANAGER->GetX_Position(), INPUT_MANAGER->GetY_Position()))
				{
					this->zSelectedRect = this->zGrid[i][this->zCurrentRound];
				}
			}
		}

		if(this->zCheckButton->IsVisible())
		{
			if(this->zCheckButton->HitTest(INPUT_MANAGER->GetX_Position(), INPUT_MANAGER->GetY_Position()))
			{
				this->CalculateCorrectMarbles();

				this->zSelectedMarble->SetImage(RESOURCE_MANAGER->GetMarble());
				this->zSelectedMarble = 0;
				this->zCheckButton->SetVisibility(false);
				this->zCurrentRound++;

				this->zCheckButton->m_Y -= (RESOURCE_MANAGER->GetMarble()->GetHeight() * this->zGraphics_ScaleY + this->zY_Spacing);
				this->zArrow->m_Y = this->zCheckButton->m_Y;
			}
		}
	}
	else if(this->zGameState == GAME_STATE_VICTORY || this->zGameState == GAME_STATE_GAMEOVER)
	{
		if(this->zBackground->HitTest(INPUT_MANAGER->GetX_Position(), INPUT_MANAGER->GetY_Position()))
		{
			this->zTweener.Tween(0.15f,
				DELAY, 0.1f,
				ONCOMPLETE, ShowEndScreen,
				END);
			this->zGameMode = GAME_MODE_SINGLE;
		}
	}
}

void Game::Update( float pDeltaTime /* = 0.0f */, float pAlphaMul /* = 1.0f */ ) 
{
	if(!this->zIsActive)
		return;

	//Update base scene
	Scene::Update(pDeltaTime, pAlphaMul);

	if(this->zCurrentRound >= this->zMaxRounds)
	{
		this->zGameState = GAME_STATE_GAMEOVER;
	}

	this->UpdateGameObjects(pDeltaTime, pAlphaMul);

	if(this->zGameState == GAME_STATE_PICKING_ANSWERS)
	{
		//Detect screen tap
		if(this->zIsInputActive && SCENE_MANAGER->GetCurrentScene() == this)
		{
			if(INPUT_MANAGER->GetBackKeyStatus())
			{
				// Reset input
				INPUT_MANAGER->Reset();

				this->zTweener.Tween(0.2f,
					DELAY, 0.2f,
					ONCOMPLETE, ShowPauseScreen,
					END);
			}
			else if(!INPUT_MANAGER->GetTouchedStatus() && INPUT_MANAGER->GetPrevTouchedStatus())
			{
				this->CheckInput();
			}
		}

		if(this->zSelectedMarble && this->zSelectedRect)
		{
			this->MoveMarble();

			this->zSelectedRect = 0;
		}

		int counter = 0;
		for(int i = 0; i < COLS; i++)
		{
			if(this->zAnswers[i]->GetImage() == RESOURCE_MANAGER->GetMarble())
				counter++;
		}
		if(counter == 5)
		{
			this->zCheckButton->SetVisibility(true);
		}
	}
	else if(this->zGameState == GAME_STATE_PLAYING)
	{
		this->UpdateGameTimer(pDeltaTime, pAlphaMul);
		//Detect screen tap
		if(this->zIsInputActive && SCENE_MANAGER->GetCurrentScene() == this)
		{
			if(!INPUT_MANAGER->GetTouchedStatus() && INPUT_MANAGER->GetPrevTouchedStatus())
			{
				this->CheckInput();
			}
		}

		if(this->zSelectedMarble && this->zSelectedRect)
		{
			this->MoveMarble();

			this->zSelectedRect = 0;
		}
	}
	else if(this->zGameState == GAME_STATE_VICTORY)
	{
		this->zFinalLabel->m_IsVisible = true;
		this->zFinalLabel->m_Text = "Victory, Touch the screen to return to menu";
		this->zFinalLabel->Update(pDeltaTime, pAlphaMul);

		//Detect screen tap
		if(this->zIsInputActive && SCENE_MANAGER->GetCurrentScene() == this)
		{
			if(!INPUT_MANAGER->GetTouchedStatus() && INPUT_MANAGER->GetPrevTouchedStatus())
			{
				this->CheckInput();
			}
		}	

		for (int i = 0; i < COLS; i++)
		{
			for(int j = 0; j < this->zMaxRounds; j++)
			{
				this->zGrid[i][j]->m_Alpha = 0.5f;
				this->zPins[i][j]->m_Alpha = 0.5f;
			}
		}

	}
	else if(this->zGameState == GAME_STATE_GAMEOVER)
	{
		this->zFinalLabel->m_IsVisible = true;
		this->zFinalLabel->m_Text = "Game over, Touch the screen to return to menu";
		this->zFinalLabel->Update(pDeltaTime, pAlphaMul);

		//Detect screen tap
		if(this->zIsInputActive && SCENE_MANAGER->GetCurrentScene() == this)
		{
			if(!INPUT_MANAGER->GetTouchedStatus() && INPUT_MANAGER->GetPrevTouchedStatus())
			{
				this->CheckInput();
			}
		}

		for (int i = 0; i < COLS; i++)
		{
			for(int j = 0; j < this->zMaxRounds; j++)
			{
				this->zGrid[i][j]->m_Alpha = 0.5f;
			}
		}
	}
}

void Game::CountChoosenMarbles()
{
	int counter = 0;
	for(int i = 0; i < COLS; i++)
	{
		if(this->zGrid[i][this->zCurrentRound]->GetImage() == RESOURCE_MANAGER->GetMarble())
			counter++;
	}

	if(counter == 5)
		this->zCheckButton->SetVisibility(true);
	else
		this->zCheckButton->SetVisibility(false);
}

void Game::MoveMarble()
{
	//float x = this->zSelectedRect->GetX();
	//float y = this->zSelectedRect->GetY();

	//this->zSelectedRect->m_X = this->zSelectedMarble->GetX();
	//this->zSelectedRect->m_Y = this->zSelectedMarble->GetY();
	this->zSelectedRect->SetImage(RESOURCE_MANAGER->GetMarble());

	this->zSelectedRect->m_Color = this->zSelectedMarble->GetImageColor();

	//this->zTweener.Tween(0.25f, 
	//	FLOAT, &this->zSelectedRect->m_X, x,
	//	FLOAT, &this->zSelectedRect->m_Y, y,
	//	EASING, Ease::linear,
	//	END);
}

void Game::Render()
{
	if(!this->zIsActive)
		return;

	Scene::Render();

	if(this->zGameState == GAME_STATE_PICKING_ANSWERS)
	{
		for(int i = 0; i < COLS; i++)
		{
			this->zAnswers[i]->Render();
		}

		for(int i = 0; i < COLORS; i++)
		{
			this->zColorChoices[i]->Render();
		}
		this->zArrow->Render();

		this->zCheckButton->Render();
	}
	else
	{
		for(int i = 0; i < COLS; i++)
		{
			for (int j = 0; j < this->zMaxRounds; j++)
			{
				this->zGrid[i][j]->Render();
			}
		}

		for(int i = 0; i < COLORS; i++)
		{
			this->zColorChoices[i]->Render();
		}

		this->zCheckButton->Render();

		if(this->zGameState == GAME_STATE_PLAYING)
			this->zArrow->Render();

		for(int i = 0; i < COLS; i++)
		{
			for (int j = 0; j < this->zMaxRounds; j++)
			{
				this->zPins[i][j]->Render();
			}
		}

		if(this->zGameState == GAME_STATE_VICTORY || this->zGameState == GAME_STATE_GAMEOVER)
		{
			for(int i = 0; i < COLS; i++)
			{
				this->zAnswers[i]->Render();
			}
			this->zFinalLabel->Render();
		}
	}
}

void Game::SwitchToScene( const char* pScene_Name )
{

}

Iw2DSceneGraph::CColor Game::GetRandomColor()
{
	int colorVal = rand() % COLORS;
	Iw2DSceneGraph::CColor color;
	switch (colorVal)
	{
	case 0: // Yellow
		color = CColor(255, 255, 0, 255);
		break;
	case 1: // Purple
		color = CColor(255, 0, 255, 255);
		break;
	case 2: // Red
		color = CColor(255, 0, 0, 255);
		break;
	case 3: // Green
		color = CColor(0, 255, 0, 255);
		break;
	case 4: // Blue
		color = CColor(0, 100, 255, 255);
		break;
	default:
		break;
	}
	
	return color;
}

void Game::CalculateCorrectMarbles()
{
	/*
	// Yellow
	// Purple
	// Red
	// Green
	// Blue
	*/
	int marbleColors[COLORS];
	
	for(int i = 0; i < COLORS; i++)
	{
		marbleColors[i] = 0;
	}
	bool usedMarbles[COLS];
	for(int i = 0; i < COLS; i++)
	{
		usedMarbles[i] = false;
		marbleColors[this->GetImageColorValue(this->zAnswers[i])]++;
	}

	int nrOfCorrectPlaced = 0; //Correctly placed marbles
	int nrOfCorrect = 0; // Correct color but placed on the wrong spot

	//Check correctly placed first
	for(int i = 0; i < COLS; i++)
	{
		Image* tempImage = this->zGrid[i][this->zCurrentRound];
		for(int j = 0; j < COLS; j++)
		{
			int value = this->GetImageColorValue(this->zAnswers[j]);

			if(tempImage->HasSameColor(this->zAnswers[j]->GetImageColor()) && usedMarbles[i] != true)
			{
				if(i == j)
				{
					if(marbleColors[value] > 0)
					{
						usedMarbles[j] = true;
						marbleColors[value]--;
						nrOfCorrectPlaced++;
					}
				}
			}
		}
	}
	//Check rest
	for(int i = 0; i < COLS; i++)
	{
		Image* tempImage = this->zGrid[i][this->zCurrentRound];
		for(int j = 0; j < COLS; j++)
		{
			int value = this->GetImageColorValue(this->zAnswers[j]);
			if(tempImage->HasSameColor(this->zAnswers[j]->GetImageColor()) && usedMarbles[i] != true)
			{
				if(marbleColors[value] > 0)
				{
					if(i != j)
					{
						usedMarbles[i] = true;
						marbleColors[value]--;
						nrOfCorrect++;
					}
				}
			}
		}
	}
	if(nrOfCorrectPlaced == 5)
	{
		this->zGameState = GAME_STATE_VICTORY;
		if(this->zGameMode == GAME_MODE_SINGLE)
		{
			Score* score = new Score(this->zCurrentGametimeSec, this->zCurrentRound + 1, this->zMaxRounds);
			this->zHighscore->AddScore(score);
		}
	}
	//Edit black/white pins
	for(int i = 0; i < COLS && (nrOfCorrect > 0 || nrOfCorrectPlaced > 0); i++)
	{
		if(nrOfCorrectPlaced > 0)
		{
			nrOfCorrectPlaced--;
			this->zPins[i][this->zCurrentRound]->SetImage(RESOURCE_MANAGER->GetPin());
			this->zPins[i][this->zCurrentRound]->SetImageColor(CColor(0, 0, 0, 255));
		}
		else if(nrOfCorrect > 0)
		{
			nrOfCorrect--;
			this->zPins[i][this->zCurrentRound]->SetImage(RESOURCE_MANAGER->GetPin());
			this->zPins[i][this->zCurrentRound]->SetImageColor(CColor(255, 255, 255, 255));
		}
	}
}

int Game::GetImageColorValue( const Image* pImage )
{
	if( pImage->HasSameColor(CColor(255, 255, 0, 255)) )// Yellow
	{
		return MARBLE_COLOR_YELLOW;
	}
	else if(pImage->HasSameColor(CColor(255, 0, 255, 255))) //Purple
	{
		return MARBLE_COLOR_PURPLE;
	}
	else if(pImage->HasSameColor(CColor(255, 0, 0, 255)))// Red
	{
		return MARBLE_COLOR_RED;
	}
	else if(pImage->HasSameColor(CColor(0, 255, 0, 255)))// Green
	{
		return MARBLE_COLOR_GREEN;
	}
	else if(pImage->HasSameColor(CColor(0, 100, 255, 255)))// Blue
	{
		return MARBLE_COLOR_BLUE;
	}
	return -1;
}

void Game::CreateTimeText( int hour, int minute, int seconds, std::string& text )
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

void Game::ShowEndScreen( CTween* pTween )
{
	MainMenu* menu = (MainMenu*)SCENE_MANAGER->Find("mainmenu");
	SCENE_MANAGER->SwitchTo(menu);
}

void Game::ShowPauseScreen( CTween* pTween )
{
	PauseMenu* menu = (PauseMenu*)SCENE_MANAGER->Find("pausemenu");
	SCENE_MANAGER->SwitchTo(menu);
}

void Game::SaveHighscore()
{
	this->zHighscore->SaveHighscore();
}

void Game::SetAnswers( Image** colors )
{
	if(this->zAnswers)
	{
		for(int i = 0; i < COLS; i++)
		{
			if(this->zAnswers[i])
				delete this->zAnswers[i];
		}
		delete [] this->zAnswers;
	}
	this->zAnswers = colors;
	this->zGameMode = GAME_MODE_MULTI;
}

void Game::SetupGame()
{
	this->zGameState = GAME_STATE_PLAYING;

	this->zCheckButton->m_Y = (MARBLE_START_Y * this->zGraphics_ScaleY) + RESOURCE_MANAGER->GetMarble()->GetHeight() * (this->zMaxRounds - 0.0f) * this->zGraphics_ScaleY - this->zY_Spacing;

	this->zArrow->m_Y = (MARBLE_START_Y * this->zGraphics_ScaleY) + RESOURCE_MANAGER->GetMarble()->GetHeight() * (this->zMaxRounds - 0.0f) * this->zGraphics_ScaleY - this->zY_Spacing;
}

void Game::SetGameMode( GAME_MODE pMode )
{
	this->zGameMode = pMode;

	switch (this->zGameMode)
	{
	case GAME_MODE_SINGLE:
		this->zGameState = GAME_STATE_PLAYING;
		break;
	case GAME_MODE_MULTI:
		this->zGameState = GAME_STATE_PICKING_ANSWERS;
		break;
	default:
		break;
	}
}

void Game::OnBackKeyPress()
{
	if(this->zGameState == GAME_STATE_PLAYING || this->zGameState == GAME_STATE_PLAYING)
	{
		ADVERT_MANAGER->Show();

		this->zTweener.Tween(0.2f,
			DELAY, 0.2f,
			ONCOMPLETE, ShowPauseScreen,
			END);
	}
	else if(this->zGameState == GAME_STATE_VICTORY || this->zGameState == GAME_STATE_GAMEOVER)
	{
		ADVERT_MANAGER->Show();

		this->zTweener.Tween(0.2f,
			DELAY, 0.2f,
			ONCOMPLETE, ShowEndScreen,
			END);
	}
}

void Game::OnPause()
{
	this->zIsActive = false;
}

void Game::OnResume()
{
	this->zIsActive = true;
}