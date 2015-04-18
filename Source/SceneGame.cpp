#include "SceneGame.h"

#include "Ads.h"
#include "IwGx.h"
#include "Input.h"
#include "Resource.h"
#include "SceneHelp.h"
#include "SceneMainMenu.h"
#include "ScenePauseMenu.h"
#include <sstream>
#include "s3eFlurry.h"


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

	//this->zPins = 0;
	//this->zGrid = 0;
	//this->zAnswers = 0;
	//this->zColorChoices = 0;
	this->zArrow = 0;
	this->zCheckButton = 0;
	this->zSelectedRect = 0;
	this->zSelectedMarble = 0;
	this->zGametimeLabel = 0;
	this->zBackground = 0;

	this->zCurrentGametimeSec = 0;

	//this->zMaxRounds = MAX_ROUNDS;
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
	//SAFE_DELETE_ARRAY(this->zAnswers);

	for (int i = 0; i < COLS; i++)
	{
		for(int j = 0; j < MAX_ROUNDS; j++)
		{
			SAFE_DELETE(this->zGrid[i][j]);
			SAFE_DELETE(this->zPins[i][j]);
		}
		//SAFE_DELETE_ARRAY(this->zGrid[i]);
	}
	//SAFE_DELETE_ARRAY(this->zGrid);
	

	for(int i = 0; i < COLORS; i++)
	{
		SAFE_DELETE(this->zColorChoices[i]);
	}
	//SAFE_DELETE_ARRAY(this->zColorChoices);
	
	SAFE_DELETE(this->zArrow);

	SAFE_DELETE(this->zCheckButton);

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

	// Total Height * scale - Req Height * scale
	this->zY_Spacing = (885 - RESOURCE_MANAGER->GetMarble()->GetHeight() * MAX_ROUNDS) * this->zGraphics_ScaleY;
	this->zY_Spacing /= MAX_ROUNDS - 1;
	this->zY_Spacing = this->zY_Spacing < 0.0f ? 0.0f : this->zY_Spacing;

	this->zHighscore = new Highscore();
	this->zHighscore->LoadHighscore();

	s3eDialogRegister(S3E_DIALOG_FINISHED, (s3eCallback)DialogCallback, NULL);

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

	AddChild(this->zGametimeLabel);

	float marbleStartX = 108.0f;

	float checkButtonStartX = 538.0f;
	float pinStart = 621.0f;
	float arrowStart = 45.0f;
	
	for(int i = 0; i < COLS; i++)
	{
		for(int j = MAX_ROUNDS - 1; j >= 0; j--)
		{
			//Creating Marble grid sprites
			this->zGrid[i][j] = new Image();
			this->zGrid[i][j]->m_X = marbleStartX * this->zGraphics_ScaleX + (float)(i * RESOURCE_MANAGER->GetMarbleBG()->GetWidth() * this->zGraphics_ScaleX);
			this->zGrid[i][j]->m_Y = (MARBLE_START_Y * this->zGraphics_ScaleY) + (MAX_ROUNDS - (j + 1)) * (RESOURCE_MANAGER->GetMarbleBG()->GetHeight() * this->zGraphics_ScaleY + this->zY_Spacing);

			this->zGrid[i][j]->SetImage(RESOURCE_MANAGER->GetMarbleBG());
			this->zGrid[i][j]->m_ScaleX = this->zGraphics_ScaleX;
			this->zGrid[i][j]->m_ScaleY = this->zGraphics_ScaleX;

			// Creating Pin grid sprites
			this->zPins[i][j] = new Image();
			this->zPins[i][j]->m_X = pinStart * this->zGraphics_ScaleX;
			this->zPins[i][j]->m_Y = (MARBLE_START_Y * this->zGraphics_ScaleY) + (MAX_ROUNDS - (j + 1)) * (RESOURCE_MANAGER->GetMarble()->GetHeight() * this->zGraphics_ScaleY + this->zY_Spacing);

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

		this->zAnswers[i] = new Image();
		this->zAnswers[i]->m_X = marbleStartX * this->zGraphics_ScaleX + (float)(i * RESOURCE_MANAGER->GetMarble()->GetWidth() * this->zGraphics_ScaleX);
		this->zAnswers[i]->m_Y = 0.0f;
		this->zAnswers[i]->m_ScaleX = this->zGraphics_ScaleX;
		this->zAnswers[i]->m_ScaleY = this->zGraphics_ScaleX;
	}

	static Iw2DSceneGraph::CColor col[COLORS] = 
	{
		CColor(255, 0, 255, 255), //Purple
		CColor(255, 255, 0, 255), //Yellow
		CColor(255, 0, 0, 255), //Red
		CColor(0, 255, 0, 255), //Green
		CColor(0, 100, 255, 255) //Blue
	};

	for(int i = 0; i < COLORS; i++)
	{
		this->zColorChoices[i] = new Image();
		this->zColorChoices[i]->m_X = marbleStartX * this->zGraphics_ScaleX + (i * RESOURCE_MANAGER->GetMarble()->GetWidth() * this->zGraphics_ScaleX);
		this->zColorChoices[i]->m_Y = (float)IwGxGetScreenHeight() - RESOURCE_MANAGER->GetMarble()->GetHeight() * this->zGraphics_ScaleY;
		this->zColorChoices[i]->SetImage(RESOURCE_MANAGER->GetMarble());
		this->zColorChoices[i]->m_ScaleX = this->zGraphics_ScaleX;
		this->zColorChoices[i]->m_ScaleY = this->zGraphics_ScaleX;
		this->zColorChoices[i]->m_Color = col[i];
	}

	//Arrow
	this->zArrow = new Image();
	this->zArrow->m_X = arrowStart * this->zGraphics_ScaleX;

	this->zArrow->m_AnchorY = 0.5f;
	this->zArrow->SetImage(RESOURCE_MANAGER->GetArrow());
	this->zArrow->m_ScaleX = this->zGraphics_ScaleX;
	this->zArrow->m_ScaleY = this->zGraphics_ScaleX;

	//Check button
	this->zCheckButton = new Image();
	this->zCheckButton->m_X = checkButtonStartX * this->zGraphics_ScaleX;

	this->zCheckButton->SetImage(RESOURCE_MANAGER->GetCheckButton());
	this->zCheckButton->m_ScaleX = this->zGraphics_ScaleX;
	this->zCheckButton->m_ScaleY = this->zGraphics_ScaleX;
	this->zCheckButton->SetVisibility(false);
	this->zCheckButton->m_AnchorY = 0.5f;

	//Help Button
	this->zHelpButton = new Image();
	this->zHelpButton->SetImage(RESOURCE_MANAGER->GetHelpButton());

	this->zHelpButton->m_X = 5.0f * this->zGraphics_ScaleX;
	this->zHelpButton->m_Y = (float)IwGxGetScreenHeight() - RESOURCE_MANAGER->GetBackButton()->GetHeight() * zGraphics_ScaleY;

	this->zHelpButton->m_ScaleX = this->zGraphics_ScaleX;
	this->zHelpButton->m_ScaleY = this->zGraphics_ScaleX;

	AddChild(this->zHelpButton);
}

void Game::New_Game()
{
	this->zSelectedRect = 0;
	this->zSelectedMarble = 0;

	this->zCurrentRound = 0;
	this->zButtonPressed = -1;
	this->zCurrentGametimeSec = 0.0f;

	this->zGametimeLabel->m_Text = "";

	switch (this->zGameMode)
	{
	case GAME_MODE_SINGLE:
		if(s3eFlurryAvailable())
			s3eFlurryLogEvent("Started Singleplayer game");
		this->zGameState = GAME_STATE_PLAYING;
		break;
	case GAME_MODE_MULTI:
		if(s3eFlurryAvailable())
			s3eFlurryLogEvent("Started multiplayer game");
		this->zGameState = GAME_STATE_PICKING_ANSWERS;
		break;
	default:
		break;
	}

	for(int i = 0; i < COLS; i++)
	{
		for(int j = MAX_ROUNDS - 1; j >= 0; j--)
		{
			this->zGrid[i][j]->SetImage(RESOURCE_MANAGER->GetMarbleBG());
			this->zGrid[i][j]->m_Color = CColor(0, 0, 0, 255);

			this->zPins[i][j]->SetImage(RESOURCE_MANAGER->GetPinBG());
			this->zPins[i][j]->m_Color = CColor(0, 0, 0, 255);
		}

		if(this->zGameMode == GAME_MODE_SINGLE)
		{
			this->zAnswers[i]->SetImage(RESOURCE_MANAGER->GetMarble());	
			this->zAnswers[i]->m_Color = this->GetRandomColor();
		}
		else
		{
			this->zAnswers[i]->SetImage(RESOURCE_MANAGER->GetMarbleBG());
			this->zAnswers[i]->m_Color = CColor(0, 0, 0, 255);
		}
	}

	for(int i = 0; i < COLORS; i++)
	{
		this->zColorChoices[i]->SetImage(RESOURCE_MANAGER->GetMarble());
	}

	if(this->zGameMode == GAME_MODE_MULTI)
	{
		//Arrow
		this->zArrow->m_Y = 0.5f * RESOURCE_MANAGER->GetMarble()->GetHeight() * this->zGraphics_ScaleX;
		//Check button
		this->zCheckButton->m_Y = 0.5f * RESOURCE_MANAGER->GetMarble()->GetHeight() * this->zGraphics_ScaleX;
	}
	else
	{
		//Arrow
		this->zArrow->m_Y = (MARBLE_START_Y * this->zGraphics_ScaleY) + RESOURCE_MANAGER->GetMarble()->GetHeight() * (MAX_ROUNDS - 0.0f) * this->zGraphics_ScaleY - this->zY_Spacing;
		//Check button
		this->zCheckButton->m_Y = (MARBLE_START_Y * this->zGraphics_ScaleY) + RESOURCE_MANAGER->GetMarble()->GetHeight() * (MAX_ROUNDS - 0.0f) * this->zGraphics_ScaleY - this->zY_Spacing;
	}
}

void Game::UpdateGameTimer( float pDeltaTime, float pAlphaMul )
{
	this->zCurrentGametimeSec += pDeltaTime;

	int minute = 0;
	int hour = 0;
	int seconds = 0;

	TimeHelper::CalcTime(hour, minute, seconds, (int)this->zCurrentGametimeSec);

	std::string text = "";
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
		for (int j = 0; j < MAX_ROUNDS; j++)
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
	if(this->zGameState == GAME_STATE_PLAYING)
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
	else if(this->zGameState == GAME_STATE_PICKING_ANSWERS)
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
	if(this->zHelpButton->HitTest(INPUT_MANAGER->GetX_Position(), INPUT_MANAGER->GetY_Position()))
	{
		if(s3eFlurryAvailable())
			s3eFlurryLogEvent("Viewed help screen");

		//Switch to help Scene
		HelpScreen* help = (HelpScreen*)SCENE_MANAGER->Find("help");

		SCENE_MANAGER->SwitchTo(help);
	}
}

void Game::Update( float pDeltaTime /* = 0.0f */, float pAlphaMul /* = 1.0f */ ) 
{
	if(!this->zIsActive)
		return;

	//Update base scene
	Scene::Update(pDeltaTime, pAlphaMul);

	if( (this->zGameState != GAME_STATE_GAMEOVER && this->zGameState != GAME_STATE_VICTORY) && 
		this->zCurrentRound >= MAX_ROUNDS)
	{
		if(s3eFlurryAvailable())
			s3eFlurryLogEvent("GameOver event");

		this->zGameState = GAME_STATE_GAMEOVER;
		if (s3eDialogAvailable())
		{
			s3eDialogAlertInfo info;
			info.m_Message = "You didn't manage to solve the code";
			info.m_Title = "Defeat";
			info.m_Button[0] = "Main Menu";
			info.m_Button[1] = "New Game";
			info.m_Button[2] = "Close";
			s3eDialogAlertBox(&info);
		}
	}

	this->UpdateGameObjects(pDeltaTime, pAlphaMul);

	//Detect screen tap
	if(this->zIsInputActive && SCENE_MANAGER->GetCurrentScene() == this && 
		!INPUT_MANAGER->GetTouchedStatus() && INPUT_MANAGER->GetPrevTouchedStatus())
	{
		this->CheckInput();
	}

	if(this->zGameState == GAME_STATE_PICKING_ANSWERS)
	{
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

		if(this->zSelectedMarble && this->zSelectedRect)
		{
			this->MoveMarble();

			this->zSelectedRect = 0;
		}
	}
	else if(this->zGameState == GAME_STATE_VICTORY)
	{
		if(this->zButtonPressed == 0) //Main menu
		{
			MainMenu* menu = (MainMenu*)SCENE_MANAGER->Find("mainmenu");
			SCENE_MANAGER->SwitchTo(menu);

			this->zButtonPressed = -1;
		}
		else if(this->zButtonPressed == 1) // New Game
		{
			this->New_Game();

			this->zButtonPressed = -1;
		}

	}
	else if(this->zGameState == GAME_STATE_GAMEOVER)
	{
		if(this->zButtonPressed == 0) //Main menu
		{
			MainMenu* menu = (MainMenu*)SCENE_MANAGER->Find("mainmenu");
			SCENE_MANAGER->SwitchTo(menu);

			this->zButtonPressed = -1;
		}
		else if(this->zButtonPressed == 1) // New Game
		{
			this->New_Game();

			this->zButtonPressed = -1;
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
	this->zSelectedRect->SetImage(RESOURCE_MANAGER->GetMarble());

	this->zSelectedRect->m_Color = this->zSelectedMarble->GetImageColor();
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
			for (int j = 0; j < MAX_ROUNDS; j++)
			{
				this->zGrid[i][j]->Render();
				this->zPins[i][j]->Render();
			}
		}

		for(int i = 0; i < COLORS; i++)
		{
			this->zColorChoices[i]->Render();
		}

		this->zCheckButton->Render();

		if(this->zGameState == GAME_STATE_PLAYING)
			this->zArrow->Render();

		if(this->zGameState == GAME_STATE_VICTORY || this->zGameState == GAME_STATE_GAMEOVER)
		{
			for(int i = 0; i < COLS; i++)
			{
				this->zAnswers[i]->Render();
			}
		}
	}
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
				if(i == j && marbleColors[value] > 0)
				{
					usedMarbles[j] = true;
					marbleColors[value]--;
					nrOfCorrectPlaced++;
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
				if(i != j && marbleColors[value] > 0)
				{
					usedMarbles[i] = true;
					marbleColors[value]--;
					nrOfCorrect++;
				}
			}
		}
	}
	if(nrOfCorrectPlaced == 5)
	{
		this->zGameState = GAME_STATE_VICTORY;
		if(this->zGameMode == GAME_MODE_SINGLE)
		{
			Score* score = new Score(this->zCurrentGametimeSec, this->zCurrentRound + 1, MAX_ROUNDS);
			this->zHighscore->AddScore(score);

			char text[32];

			sprintf(text, "%d - %d", this->zCurrentRound + 1, (int)this->zCurrentGametimeSec);

			if(s3eFlurryAvailable())
				s3eFlurryLogEventParams("Victory event", text);
		}
		else
		{
			if(s3eFlurryAvailable())
				s3eFlurryLogEvent("Victory event");
		}

		int minute, hour, second;
		TimeHelper::CalcTime(hour, minute, second, (int)this->zCurrentGametimeSec);

		std::string text = "Congratulation you have solved the code in ";
		this->CreateTimeText(hour, minute, second, text, true);
		if (s3eDialogAvailable())
		{
			s3eDialogAlertInfo info;
			info.m_Message = text.c_str();
			info.m_Title = "Victory";
			info.m_Button[0] = "Main Menu";
			info.m_Button[1] = "New Game";
			info.m_Button[2] = "Close";
			s3eDialogAlertBox(&info);
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

void Game::CreateTimeText(const int& hour, const int& minute, const int& seconds, std::string& text, bool typeEnabled)
{
	std::stringstream ss;

	if(hour > 0)
	{
		if(hour < 10 && !typeEnabled)
			ss << "0";

		ss << hour;
		if(typeEnabled)
			ss << "h ";
		else
			ss << ":";

		if(minute > 0)
		{
			if(minute < 10 && !typeEnabled)
				ss << "0";

			ss << minute;

			if(typeEnabled)
				ss << "m ";
			else
				ss << ":";
		}
		else
		{
			ss << "00:";
		}
	}
	else if(minute > 0)
	{
		if(minute < 10 && !typeEnabled)
			ss << "0";

		ss << minute;

		if(typeEnabled)
			ss << "m ";
		else
			ss << ":";
	}

	if(seconds < 10 && !typeEnabled)
		ss << "0";

	ss << seconds;

	if(typeEnabled)
		ss << "s ";

	text += ss.str();
}

void Game::SaveHighscore()
{
	this->zHighscore->SaveHighscore();
}

void Game::SetupGame()
{
	this->zGameState = GAME_STATE_PLAYING;

	this->zCheckButton->m_Y = (MARBLE_START_Y * this->zGraphics_ScaleY) + RESOURCE_MANAGER->GetMarble()->GetHeight() * (MAX_ROUNDS - 0.0f) * this->zGraphics_ScaleY - this->zY_Spacing;

	this->zArrow->m_Y = (MARBLE_START_Y * this->zGraphics_ScaleY) + RESOURCE_MANAGER->GetMarble()->GetHeight() * (MAX_ROUNDS - 0.0f) * this->zGraphics_ScaleY - this->zY_Spacing;
}

void Game::SetGameMode( GAME_MODE pMode )
{
	this->zGameMode = pMode;
}

void Game::OnBackKeyPress()
{
	if(this->zGameState == GAME_STATE_PLAYING || this->zGameState == GAME_STATE_PICKING_ANSWERS)
	{
		PauseMenu* menu = (PauseMenu*)SCENE_MANAGER->Find("pausemenu");
		SCENE_MANAGER->SwitchTo(menu);
	}
	else if(this->zGameState == GAME_STATE_VICTORY || this->zGameState == GAME_STATE_GAMEOVER)
	{
		MainMenu* menu = (MainMenu*)SCENE_MANAGER->Find("mainmenu");
		SCENE_MANAGER->SwitchTo(menu);
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

int32 Game::DialogCallback( s3eDialogCallbackData* data, void* userData )
{
	Game* game = (Game*)SCENE_MANAGER->Find("game");

	game->SetButtonPress(data->m_ButtonPressed);

	return 0;
}

void Game::OnSwap()
{
	ADVERT_MANAGER->Hide();
}