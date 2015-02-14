#include "Game.h"

#include "PauseMenu.h"
#include "MainMenu.h"
#include "Input.h"
#include "Audio.h"
#include "Resource.h"
#include "IwGx.h"

using namespace Iw2DSceneGraph;

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

	this->zCurrentRound = 0;
	this->zScreenSwitching = false;
	this->zShowCorrectMarbles = false;

	this->zHighscore = 0;
}

Game::~Game()
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
	
	if(this->zColorChoices)
	{
		for(int i = 0; i < COLORS; i++)
		{
			if(this->zColorChoices[i])
				delete this->zColorChoices[i];
		}
		delete [] this->zColorChoices;
	}
	

	if(this->zArrow)
		delete this->zArrow;

	if(this->zCheckButton)
		delete this->zCheckButton;

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

	if(this->zFinalLabel)
		delete this->zFinalLabel;

	this->zHighscore->SaveHighscore();
	delete this->zHighscore;
}

void Game::Init()
{
	Scene::Init();

	this->zGraphics_Scale = (float)IwGxGetScreenWidth() /GRAPHIC_DESIGN_WIDTH;
	this->zFont_Scale = (float)IwGxGetScreenWidth() / FONT_DESIGN_WIDTH;
	this->zActualFontHeight = FONT_HEIGHT * this->zFont_Scale;
	//Initialize UI
	this->zBackground = new CSprite();
	this->zBackground->m_X = (float)IwGxGetScreenWidth() / 2;
	this->zBackground->m_Y = (float)IwGxGetScreenHeight() / 2;
	this->zBackground->SetImage(GetResource()->GetGameBG());
	this->zBackground->m_W = this->zBackground->GetImage()->GetWidth();
	this->zBackground->m_H = this->zBackground->GetImage()->GetHeight();
	this->zBackground->m_AnchorX = 0.5f;
	this->zBackground->m_AnchorY = 0.5f;
	// Fit background to screen size
	this->zBackground->m_ScaleX = (float)IwGxGetScreenWidth() / this->zBackground->GetImage()->GetWidth();
	this->zBackground->m_ScaleY = (float)IwGxGetScreenHeight() / this->zBackground->GetImage()->GetHeight();
	
	AddChild(this->zBackground);
	
	this->zGametimeLabel = new CLabel();
	this->zGametimeLabel->m_X = -100 * this->zGraphics_Scale;
	this->zGametimeLabel->m_Y = 10 * this->zGraphics_Scale;
	this->zGametimeLabel->m_W = FONT_DESIGN_WIDTH;
	this->zGametimeLabel->m_H = this->zActualFontHeight;
	this->zGametimeLabel->m_Text = "";
	this->zGametimeLabel->m_AlignHor = IW_2D_FONT_ALIGN_RIGHT;
	this->zGametimeLabel->m_AlignVer = IW_2D_FONT_ALIGN_TOP;
	this->zGametimeLabel->m_Font = GetResource()->GetFont();
	this->zGametimeLabel->m_ScaleX = this->zFont_Scale;// / this->zGraphics_Scale;
	this->zGametimeLabel->m_ScaleY = this->zFont_Scale;// / this->zGraphics_Scale;
	this->zGametimeLabel->m_Color = CColor(0, 0, 0, 255);
	AddChild(this->zGametimeLabel);

	this->zY_Spacing = (float)( (IwGxGetScreenHeight()) - (GetResource()->GetMarble()->GetWidth() * this->zGraphics_Scale * (this->zMaxRounds + 2)) );
	this->zY_Spacing /= this->zMaxRounds + 2;
	this->zY_Spacing = this->zY_Spacing <= 0.0f ? 0.0f : this->zY_Spacing;

	this->zHighscore = new Highscore();
	this->zHighscore->LoadHighscore();
}

void Game::New_Game()
{
	this->zGameState = GAME_STATE_PLAYING;
	this->zCurrentRound = 0;
	this->zScreenSwitching = false;
	this->zShowCorrectMarbles = false;

	float marbleStartX = 108.0f;
	float marbleStartY = 102.0f;
	float checkButtonStartX = 538.0f;
	float pinStart = 621.0f;
	float arrowStart = 45.0f;

	if(this->zFinalLabel == 0)
	{
		this->zFinalLabel = new CLabel();
		this->zFinalLabel->m_X = 60.0f * this->zGraphics_Scale;
		this->zFinalLabel->m_Y = 568 * this->zGraphics_Scale;
		this->zFinalLabel->m_W = FONT_DESIGN_WIDTH;
		this->zFinalLabel->m_H = this->zActualFontHeight;
		this->zFinalLabel->m_AlignHor = IW_2D_FONT_ALIGN_LEFT;
		this->zFinalLabel->m_AlignVer = IW_2D_FONT_ALIGN_TOP;
		this->zFinalLabel->m_Font = GetResource()->GetFont();
		this->zFinalLabel->m_ScaleX = this->zFont_Scale;
		this->zFinalLabel->m_ScaleY = this->zFont_Scale;
		this->zFinalLabel->m_Color = CColor(0, 0, 0, 255);
	}
	this->zFinalLabel->m_Text = "";
	this->zFinalLabel->m_IsVisible = false;

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

		for(int j = 0; j < this->zMaxRounds; j++)
		{
			Image* marble_BG = new Image();
			marble_BG->m_X = marbleStartX * this->zGraphics_Scale + (float)(i * GetResource()->GetMarble()->GetWidth() * this->zGraphics_Scale);
			marble_BG->m_Y = (IwGxGetScreenHeight() - marbleStartY * this->zGraphics_Scale) - (j + 1) * (GetResource()->GetMarble()->GetHeight() * this->zGraphics_Scale) - j * this->zY_Spacing;
			marble_BG->SetImage(GetResource()->GetMarbleBG());
			marble_BG->m_ScaleX = this->zGraphics_Scale;
			marble_BG->m_ScaleY = this->zGraphics_Scale;

			this->zGrid[i][j] = marble_BG;
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
		Image* marble = new Image();
		marble->m_X = marbleStartX * this->zGraphics_Scale + (i * GetResource()->GetMarble()->GetWidth() * this->zGraphics_Scale);
		marble->m_Y = (float)IwGxGetScreenHeight() - GetResource()->GetMarble()->GetHeight() * this->zGraphics_Scale;
		marble->SetImage(GetResource()->GetMarble());
		marble->m_ScaleX = this->zGraphics_Scale;
		marble->m_ScaleY = this->zGraphics_Scale;
		marble->m_Color = col[i];
		this->zColorChoices[i] = marble;
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

		for(int j = 0; j < this->zMaxRounds; j++)
		{
			Image* pin_bg = new Image();
			pin_bg->m_X = pinStart * this->zGraphics_Scale;
			pin_bg->m_Y = (IwGxGetScreenHeight() - marbleStartY * this->zGraphics_Scale) - (j + 0.8f) * (GetResource()->GetMarble()->GetHeight() * this->zGraphics_Scale) - j * this->zY_Spacing;
			if(i < 3)
			{
				pin_bg->m_X += ((i) * GetResource()->GetPin()->GetWidth() * this->zGraphics_Scale);
			}
			else
			{
				pin_bg->m_X += ((i - 3 + 0.5f) * GetResource()->GetPin()->GetWidth() * this->zGraphics_Scale);
				pin_bg->m_Y += GetResource()->GetPin()->GetHeight() * this->zGraphics_Scale;
			}

			pin_bg->SetImage(GetResource()->GetPinBG());

			pin_bg->m_ScaleX = this->zGraphics_Scale;
			pin_bg->m_ScaleY = this->zGraphics_Scale;
			this->zPins[i][j] = pin_bg;
		}
	}

	if(this->zArrow)
		delete this->zArrow;

	Image* arrow = new Image();
	arrow->m_X = arrowStart * this->zGraphics_Scale;
	arrow->m_Y = (IwGxGetScreenHeight() - marbleStartY * this->zGraphics_Scale) - 0.5f * GetResource()->GetMarble()->GetHeight() * this->zGraphics_Scale - this->zY_Spacing;
	arrow->SetImage(GetResource()->GetArrow());
	arrow->m_ScaleX = this->zGraphics_Scale;
	arrow->m_ScaleY = this->zGraphics_Scale;
	this->zArrow = arrow;

	if(this->zCheckButton)
		delete this->zCheckButton;

	Image* button = new Image();
	button->m_X = checkButtonStartX * this->zGraphics_Scale;
	button->m_Y = (IwGxGetScreenHeight() - marbleStartY * this->zGraphics_Scale) - 0.5f * GetResource()->GetMarble()->GetHeight() * this->zGraphics_Scale - this->zY_Spacing;
	button->SetImage(GetResource()->GetCheckButton());
	button->m_ScaleX = this->zGraphics_Scale;
	button->m_ScaleY = this->zGraphics_Scale;
	button->SetVisibility(false);
	this->zCheckButton = button;

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
		Image* marble_Answer = new Image();
		marble_Answer->m_X = marbleStartX * this->zGraphics_Scale + (float)(i * GetResource()->GetMarble()->GetWidth() * this->zGraphics_Scale);
		marble_Answer->m_Y = 0.0f;
		marble_Answer->SetImage(GetResource()->GetMarble());
		marble_Answer->m_ScaleX = this->zGraphics_Scale;
		marble_Answer->m_ScaleY = this->zGraphics_Scale;
		marble_Answer->m_Color = this->GetRandomColor();

		this->zAnswers[i] = marble_Answer;
	}
}

void Game::UpdateGameTimer( float pDeltaTime, float pAlphaMul )
{
	this->zCurrentGametimeSec += pDeltaTime;
	int minute = (int)(this->zCurrentGametimeSec / 60);
	int hour = minute / 60;
	minute = minute - (hour * 60);

	std::string finalstring = "";
	char str[32];
	if(hour > 0)
	{
		snprintf(str, 32, "%d", (int)hour);
		finalstring = str;
		finalstring += ":";
		if(minute < 1)
			finalstring += "00:";
	}
	if(minute > 0)
	{
		if(minute < 10)
			finalstring += '0';

		snprintf(str, 32, "%d", (int)minute);
		finalstring += str;
		finalstring += ":";
	}
	
	float seconds = this->zCurrentGametimeSec - (minute * 60) - (hour * 3600);
	if(seconds < 10)
		finalstring += '0';
	snprintf(str, 32, "%d", (int)seconds);
	finalstring += str;

	zGametimeLabel->m_Text = finalstring;
}

void Game::UpdateGameObjects(float pDeltaTime, float pAlphaMul)
{
	if(this->zShowCorrectMarbles)
	{
		for(int i = 0; i < COLS; i++)
		{
			this->zAnswers[i]->Update(pDeltaTime, pAlphaMul);
		}
	}

	for(int i = 0; i < COLS; i++)
	{
		for (int j = 0; j < this->zMaxRounds; j++)
		{
			if(this->zGrid[i][j] != 0)
				this->zGrid[i][j]->Update(pDeltaTime, pAlphaMul);
		}
	}

	for(int i = 0; i < COLORS; i++)
	{
		this->zColorChoices[i]->Update(pDeltaTime, pAlphaMul);
	}

	if(this->zCurrentRound < this->zMaxRounds)
	{
		this->zArrow->Update(pDeltaTime, pAlphaMul);
		this->CountChoosenMarbles();
	}
	
	this->zCheckButton->Update(pDeltaTime, pAlphaMul);
	
	for(int i = 0; i < COLS; i++)
	{
		for (int j = 0; j < this->zMaxRounds; j++)
		{
			this->zPins[i][j]->Update(pDeltaTime, pAlphaMul);
		}
	}
}

void Game::Update( float pDeltaTime /* = 0.0f */, float pAlphaMul /* = 1.0f */ ) 
{
	if(!this->zIsActive)
		return;

	//Update base scene
	Scene::Update(pDeltaTime, pAlphaMul);

	this->UpdateGameObjects(pDeltaTime, pAlphaMul);

	if(this->zCurrentRound >= this->zMaxRounds)
	{
		this->zGameState = GAME_STATE_GAMEOVER;
	}

	if(this->zGameState == GAME_STATE_PLAYING)
	{
		this->UpdateGameTimer(pDeltaTime, pAlphaMul);
		//Detect screen tap
		if(this->zIsInputActive && this->zSceneManager->GetCurrentScene() == this)
		{
			if(GetInput()->GetBackKeyStatus())
			{
				this->ShowPauseScreen();
			}
			if(!GetInput()->GetTouchedStatus() && GetInput()->GetPrevTouchedStatus())
			{
				// Reset input
				GetInput()->Reset();

				for(int i = 0; i < COLORS; i++)
				{
					if(this->zColorChoices[i]->HitTest(GetInput()->GetX_Position(), GetInput()->GetY_Position()))
					{
						if(this->zSelectedMarble != 0)
							this->zSelectedMarble->SetImage(GetResource()->GetMarble());

						this->zSelectedMarble = this->zColorChoices[i];
						this->zColorChoices[i]->SetImage(GetResource()->GetMarbleSelected());
					}
				}
				//Require that user selects a color first
				if(this->zSelectedMarble != 0)
				{
					for(int i = 0; i < COLS; i++)
					{
						if(this->zGrid[i][this->zCurrentRound]->HitTest(GetInput()->GetX_Position(), GetInput()->GetY_Position()))
						{
							this->zSelectedRect = this->zGrid[i][this->zCurrentRound];
						}
					}
				}

				if(this->zCheckButton->IsVisible())
				{
					if(this->zCheckButton->HitTest(GetInput()->GetX_Position(), GetInput()->GetY_Position()))
					{
						this->CalculateCorrectMarbles();

						this->zSelectedMarble->SetImage(GetResource()->GetMarble());
						this->zSelectedMarble = 0;
						this->zCheckButton->SetVisibility(false);
						this->zCurrentRound++;

						this->zCheckButton->m_Y -= (GetResource()->GetMarble()->GetHeight() * this->zGraphics_Scale + this->zY_Spacing);
						this->zArrow->m_Y = this->zCheckButton->m_Y;
					}
				}
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
		this->zFinalLabel->m_Text = "Touch the screen to return to menu";
		this->zFinalLabel->Update(pDeltaTime, pAlphaMul);

		this->zShowCorrectMarbles = true;

		Score* score = new Score(this->zCurrentGametimeSec, this->zCurrentRound, this->zMaxRounds);
		this->zHighscore->AddScore(score);

		//Detect screen tap
		if(this->zIsInputActive && this->zSceneManager->GetCurrentScene() == this)
		{
			if(!GetInput()->GetTouchedStatus() && GetInput()->GetPrevTouchedStatus())
			{
				// Reset input
				GetInput()->Reset();
				if(this->zBackground->HitTest(GetInput()->GetX_Position(), GetInput()->GetY_Position()))
				{
					this->zTweener.Tween(0.2f,
						DELAY, 0.2f,
						ONCOMPLETE, ShowEndScreen,
						END);
				}
			}
		}	
	}
	else if(this->zGameState == GAME_STATE_GAMEOVER)
	{
		this->zFinalLabel->m_IsVisible = true;
		this->zFinalLabel->m_Text = "Touch the screen to return to menu";
		this->zFinalLabel->Update(pDeltaTime, pAlphaMul);

		this->zShowCorrectMarbles = true;
		//Detect screen tap
		if(this->zIsInputActive && this->zSceneManager->GetCurrentScene() == this)
		{
			if(!GetInput()->GetTouchedStatus() && GetInput()->GetPrevTouchedStatus())
			{
				// Reset input
				GetInput()->Reset();
				if(this->zBackground->HitTest(GetInput()->GetX_Position(), GetInput()->GetY_Position()))
				{
					this->zTweener.Tween(0.2f,
						DELAY, 0.2f,
						ONCOMPLETE, ShowEndScreen,
						END);
				}
			}
		}
	}
}

void Game::CountChoosenMarbles()
{
	int counter = 0;
	for(int i = 0; i < COLS; i++)
	{
		if(this->zGrid[i][this->zCurrentRound]->GetImage() == GetResource()->GetMarble())
			counter++;
	}

	if(counter == 5)
		this->zCheckButton->SetVisibility(true);
	else
		this->zCheckButton->SetVisibility(false);
}

void Game::MoveMarble()
{
	float x = this->zSelectedRect->GetX();
	float y = this->zSelectedRect->GetY();

	this->zSelectedRect->m_X = this->zSelectedMarble->GetX();
	this->zSelectedRect->m_Y = this->zSelectedMarble->GetY();
	this->zSelectedRect->SetImage(GetResource()->GetMarble());
	this->zSelectedRect->m_W = this->zSelectedMarble->GetWidth();
	this->zSelectedRect->m_H = this->zSelectedMarble->GetHeight();
	this->zSelectedRect->m_ScaleX = this->zGraphics_Scale;
	this->zSelectedRect->m_ScaleY = this->zGraphics_Scale;
	this->zSelectedRect->m_Color = this->zSelectedMarble->GetImageColor();

	this->zTweener.Tween(0.25f, 
		FLOAT, &this->zSelectedRect->m_X, x,
		FLOAT, &this->zSelectedRect->m_Y, y,
		EASING, Ease::linear,
		END);
}

void Game::Render()
{
	if(!this->zIsActive)
		return;

	Scene::Render();

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

void Game::SwitchToScene( const char* pScene_Name )
{

}

Iw2DSceneGraph::CColor Game::GetRandomColor()
{
	int colorVal = rand() % 5;
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
	}
	//Edit black/white pins
	for(int i = 0; i < COLS && (nrOfCorrect > 0 || nrOfCorrectPlaced > 0); i++)
	{
		if(nrOfCorrectPlaced > 0)
		{
			nrOfCorrectPlaced--;
			this->zPins[i][this->zCurrentRound]->SetImage(GetResource()->GetPin());
			this->zPins[i][this->zCurrentRound]->SetImageColor(CColor(0, 0, 0, 255));
		}
		else if(nrOfCorrect > 0)
		{
			nrOfCorrect--;
			this->zPins[i][this->zCurrentRound]->SetImage(GetResource()->GetPin());
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

void Game::ShowEndScreen( CTween* pTween )
{
	MainMenu* menu = (MainMenu*)GetSceneManager()->Find("mainmenu");
	GetSceneManager()->SwitchTo(menu);
}

void Game::ShowPauseScreen()
{
	//Temporary fix for back key
	// Reset input
	GetInput()->Reset();
	PauseMenu* menu = (PauseMenu*)GetSceneManager()->Find("pausemenu");
	GetSceneManager()->SwitchTo(menu);
}