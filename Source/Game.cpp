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
	this->zAnswers = 0;
	this->zCheckButton = 0;
	this->zColorChoices = 0;
	this->zSelectedRect = 0;
	this->zSelectedMarble = 0;

	this->zMaxRounds = NORMAL;

	this->zCurrentRound = 0;
	this->zGameWon = false;
	this->zGameOver = false;
	this->zScreenSwitching = false;
	this->zShowCheckButton = false;
	this->zShowCorrectMarbles = false;
}

Game::~Game()
{
	if(this->zAnswers)
		delete [] this->zAnswers;

	if(this->zGrid)
	{
		for (int i = 0; i < COLS; i++)
			delete [] this->zGrid[i];

		delete [] this->zGrid;
	}
	
	if(this->zColorChoices)
		delete [] this->zColorChoices;

	if(this->zCheckButton)
		delete this->zCheckButton;

	if(this->zPins)
	{
		for (int i = 0; i < COLS; i++)
			delete [] this->zPins[i];

		delete [] this->zPins;
	}
}

void Game::Init()
{
	//this->New_Game();

	Scene::Init();

	this->zGraphics_Scale = (float)IwGxGetScreenWidth() /GRAPHIC_DESIGN_WIDTH;
	this->zFont_Scale = (float)IwGxGetScreenWidth() / FONT_DESIGN_WIDTH;
	this->zActualFontHeight = FONT_HEIGHT * this->zFont_Scale;
	//Initialize UI
	CSprite* bg = new CSprite();
	bg->m_X = (float)IwGxGetScreenWidth() / 2;
	bg->m_Y = (float)IwGxGetScreenHeight() / 2;
	bg->SetImage(GetResource()->GetGameBG());
	bg->m_W = bg->GetImage()->GetWidth();
	bg->m_H = bg->GetImage()->GetHeight();
	bg->m_AnchorX = 0.5f;
	bg->m_AnchorY = 0.5f;
	// Fit background to screen size
	bg->m_ScaleX = (float)IwGxGetScreenWidth() / bg->GetImage()->GetWidth();
	bg->m_ScaleY = (float)IwGxGetScreenHeight() / bg->GetImage()->GetHeight();

	AddChild(bg);

	this->zY_Spacing = (float)( (IwGxGetScreenHeight()) - (GetResource()->GetMarble()->GetWidth() * this->zGraphics_Scale * (this->zMaxRounds + 2)) );
	this->zY_Spacing /= this->zMaxRounds + 2;
	this->zY_Spacing = this->zY_Spacing <= 0.0f ? 0.0f : this->zY_Spacing;
}

void Game::New_Game()
{
	//this->zCurrentRound = 0;
	//this->zGameWon = false;
	//this->zGameOver = false;
	//this->zScreenSwitching = false;
	//this->zShowCheckButton = true;
	//this->zShowCorrectMarbles = false;
	//
	//if(this->zGrid)
	//{
	//	for (int i = 0; i < COLS; i++)
	//		delete [] this->zGrid[i];
	//
	//	delete [] this->zGrid;
	//}
	//
	//this->zGrid = new Image*[COLS];
	//for(int i = 0; i < COLS; i++)
	//{
	//	this->zGrid[i] = new Image[this->zMaxRounds];
	//
	//	for(int j = 0; j < this->zMaxRounds; j++)
	//	{
	//		CSprite* marble_BG = new CSprite();
	//		marble_BG->m_X = (float)(i * GetResource()->GetMarble()->GetWidth() * this->zGraphics_Scale);
	//		marble_BG->m_Y = IwGxGetScreenHeight() - (j + 1) * (GetResource()->GetMarble()->GetHeight() * this->zGraphics_Scale) - j * this->zY_Spacing;
	//		marble_BG->SetImage(GetResource()->GetMarbleBG());
	//		marble_BG->m_ScaleX = this->zGraphics_Scale;
	//		marble_BG->m_ScaleY = this->zGraphics_Scale;
	//		marble_BG->m_Color = Iw2DSceneGraph::CColor(0, 0, 0, 255);
	//		//marble_BG->SetAnimDuration(2.0f);
	//		this->zGrid[i][j].SetImage(marble_BG);
	//	}
	//}
	//
	//if(this->zColorChoices)
	//	delete [] this->zColorChoices;
	//
	//Iw2DSceneGraph::CColor col[COLORS] = 
	//{
	//	CColor(255, 0, 255, 255), //Yellow
	//	CColor(255, 255, 0, 255), //Purple
	//	CColor(255, 0, 0, 255), //Red
	//	CColor(0, 255, 0, 255), //Green
	//	CColor(0, 100, 255, 255) //Blue
	//};
	//
	//this->zColorChoices = new Image[COLORS];
	//for(int i = 0; i < COLORS; i++)
	//{
	//	CSprite* marble = new CSprite();
	//	marble->m_X = (float)(IwGxGetScreenWidth() - GetResource()->GetMarble()->GetWidth() * this->zGraphics_Scale);
	//	marble->m_Y = (float)(IwGxGetScreenHeight() - (i + 1) * GetResource()->GetMarble()->GetHeight() * this->zGraphics_Scale);
	//	marble->SetImage(GetResource()->GetMarble());
	//	marble->m_ScaleX = this->zGraphics_Scale;
	//	marble->m_ScaleY = this->zGraphics_Scale;
	//	marble->m_Color = col[i];
	//	//marble->SetAnimDuration(2.0f);
	//	this->zColorChoices[i].SetImage(marble);
	//}
	//
	//if(this->zPins)
	//{
	//	for (int i = 0; i < COLS; i++)
	//		delete [] this->zPins[i];
	//
	//	delete [] this->zPins;
	//}
	//
	//this->zPins = new Image*[COLS];
	//for(int i = 0; i < COLS; i++)
	//{
	//	this->zPins[i] = new Image[this->zMaxRounds];
	//
	//	for(int j = 0; j < this->zMaxRounds; j++)
	//	{
	//		CSprite* pin_bg = new CSprite();
	//		pin_bg->m_X = (COLS * (GetResource()->GetMarble()->GetWidth()) * this->zGraphics_Scale) + ((i + 0.5f) * GetResource()->GetPin()->GetWidth() * this->zGraphics_Scale);
	//		pin_bg->m_Y = IwGxGetScreenHeight() - (j + 1) * (GetResource()->GetMarble()->GetWidth() * this->zGraphics_Scale + this->zY_Spacing);
	//		pin_bg->SetImage(GetResource()->GetPin());
	//		pin_bg->m_ScaleX = this->zGraphics_Scale;
	//		pin_bg->m_ScaleY = this->zGraphics_Scale;
	//		pin_bg->m_Alpha = 0.0f;
	//		this->zPins[i][j].SetImage(pin_bg);
	//	}
	//}
	//
	//if(this->zCheckButton)
	//	delete this->zCheckButton;
	//
	//CSprite* button = new CSprite();
	//button->m_X = COLS * (GetResource()->GetMarble()->GetWidth() * this->zGraphics_Scale) + GetResource()->GetCheckButton()->GetWidth() * this->zGraphics_Scale * 0.5f;
	//button->m_Y = IwGxGetScreenHeight() - GetResource()->GetMarble()->GetHeight() * this->zGraphics_Scale - this->zY_Spacing;
	//button->SetImage(GetResource()->GetCheckButton());
	//button->m_ScaleX = this->zGraphics_Scale;
	//button->m_ScaleY = this->zGraphics_Scale;
	//this->zCheckButton = new Image(button);
	//
	//if(this->zAnswers)
	//	delete [] this->zAnswers;
	//
	//this->zAnswers = new Image[COLS];
	//
	//for(int i = 0; i < COLS; i++)
	//{
	//	CSprite* marble_Answer = new CSprite();
	//	marble_Answer->m_X = (float)(i * GetResource()->GetMarble()->GetWidth() * this->zGraphics_Scale);
	//	marble_Answer->m_Y = 0.0f;
	//	marble_Answer->SetImage(GetResource()->GetMarble());
	//	marble_Answer->m_ScaleX = this->zGraphics_Scale;
	//	marble_Answer->m_ScaleY = this->zGraphics_Scale;
	//	marble_Answer->m_Color = this->GetRandomColor();
	//
	//	this->zAnswers[i].SetImage(marble_Answer);
	//}

	this->zCurrentRound = 0;
	this->zGameWon = false;
	this->zGameOver = false;
	this->zScreenSwitching = false;
	this->zShowCheckButton = false;
	this->zShowCorrectMarbles = true;

	float marbleStartX = 108.0f;
	float marbleStartY = 102.0f;
	float checkButtonStartX = 538.0f;
	if(this->zGrid)
	{
		for (int i = 0; i < COLS; i++)
			delete [] this->zGrid[i];

		delete [] this->zGrid;
	}

	this->zGrid = new Image*[COLS];
	for(int i = 0; i < COLS; i++)
	{
		this->zGrid[i] = new Image[this->zMaxRounds];

		for(int j = 0; j < this->zMaxRounds; j++)
		{
			CSprite* marble_BG = new CSprite();
			marble_BG->m_X = marbleStartX * this->zGraphics_Scale + (float)(i * GetResource()->GetMarble()->GetWidth() * this->zGraphics_Scale);
			marble_BG->m_Y = (IwGxGetScreenHeight() - marbleStartY * this->zGraphics_Scale) - (j + 1) * (GetResource()->GetMarble()->GetHeight() * this->zGraphics_Scale) - j * this->zY_Spacing;
			marble_BG->SetImage(GetResource()->GetMarbleBG());
			marble_BG->m_ScaleX = this->zGraphics_Scale;
			marble_BG->m_ScaleY = this->zGraphics_Scale;
			marble_BG->m_Color = Iw2DSceneGraph::CColor(0, 0, 0, 255);
			this->zGrid[i][j].SetImage(marble_BG);
		}
	}

	if(this->zColorChoices)
		delete [] this->zColorChoices;

	Iw2DSceneGraph::CColor col[COLORS] = 
	{
		CColor(255, 0, 255, 255), //Yellow
		CColor(255, 255, 0, 255), //Purple
		CColor(255, 0, 0, 255), //Red
		CColor(0, 255, 0, 255), //Green
		CColor(0, 100, 255, 255) //Blue
	};

	this->zColorChoices = new Image[COLORS];
	for(int i = 0; i < COLORS; i++)
	{
		CSprite* marble = new CSprite();
		marble->m_X = marbleStartX * this->zGraphics_Scale + (i * GetResource()->GetMarble()->GetWidth() * this->zGraphics_Scale);
		marble->m_Y = (float)IwGxGetScreenHeight() - GetResource()->GetMarble()->GetHeight() * this->zGraphics_Scale;
		marble->SetImage(GetResource()->GetMarble());
		marble->m_ScaleX = this->zGraphics_Scale;
		marble->m_ScaleY = this->zGraphics_Scale;
		marble->m_Color = col[i];
		this->zColorChoices[i].SetImage(marble);
	}

	if(this->zPins)
	{
		for (int i = 0; i < COLS; i++)
			delete [] this->zPins[i];

		delete [] this->zPins;
	}

	this->zPins = new Image*[COLS];
	for(int i = 0; i < COLS; i++)
	{
		this->zPins[i] = new Image[this->zMaxRounds];

		for(int j = 0; j < this->zMaxRounds; j++)
		{
			CSprite* pin_bg = new CSprite();
			pin_bg->m_X = checkButtonStartX * this->zGraphics_Scale + 2 * GetResource()->GetCheckButton()->GetWidth() * this->zGraphics_Scale;
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

			pin_bg->SetImage(GetResource()->GetPin());
			pin_bg->m_ScaleX = this->zGraphics_Scale;
			pin_bg->m_ScaleY = this->zGraphics_Scale;
			pin_bg->m_Alpha = 0.0f;
			this->zPins[i][j].SetImage(pin_bg);
		}
	}

	if(this->zCheckButton)
		delete this->zCheckButton;

	CSprite* button = new CSprite();
	button->m_X = checkButtonStartX * this->zGraphics_Scale;
	button->m_Y = (IwGxGetScreenHeight() - marbleStartY * this->zGraphics_Scale) - 0.5f * GetResource()->GetMarble()->GetHeight() * this->zGraphics_Scale - this->zY_Spacing;
	button->SetImage(GetResource()->GetCheckButton());
	button->m_ScaleX = this->zGraphics_Scale;
	button->m_ScaleY = this->zGraphics_Scale;
	this->zCheckButton = new Image(button);

	if(this->zAnswers)
		delete [] this->zAnswers;

	this->zAnswers = new Image[COLS];

	for(int i = 0; i < COLS; i++)
	{
		CSprite* marble_Answer = new CSprite();
		marble_Answer->m_X = marbleStartX * this->zGraphics_Scale + (float)(i * GetResource()->GetMarble()->GetWidth() * this->zGraphics_Scale);
		marble_Answer->m_Y = 0.0f;
		marble_Answer->SetImage(GetResource()->GetMarble());
		marble_Answer->m_ScaleX = this->zGraphics_Scale;
		marble_Answer->m_ScaleY = this->zGraphics_Scale;
		marble_Answer->m_Color = this->GetRandomColor();

		this->zAnswers[i].SetImage(marble_Answer);
	}
}

void Game::UpdateGameObjects(float pDeltaTime, float pAlphaMul)
{
	if(this->zShowCorrectMarbles)
	{
		for(int i = 0; i < COLS; i++)
		{
			this->zAnswers[i].GetImage()->Update(pDeltaTime, pAlphaMul);
		}
	}

	for(int i = 0; i < COLS; i++)
	{
		for (int j = 0; j < this->zMaxRounds; j++)
		{
			if(this->zGrid[i][j].GetImage() != 0)
				this->zGrid[i][j].GetImage()->Update(pDeltaTime, pAlphaMul);
		}
	}

	for(int i = 0; i < COLORS; i++)
	{
		this->zColorChoices[i].GetImage()->Update(pDeltaTime, pAlphaMul);
	}

	if(this->zCurrentRound < this->zMaxRounds)
		this->CountChoosenMarbles();

	if(this->zShowCheckButton)
		this->zCheckButton->Update(pDeltaTime, pAlphaMul);

	for(int i = 0; i < COLS; i++)
	{
		for (int j = 0; j < this->zCurrentRound; j++)
		{
			this->zPins[i][j].GetImage()->Update(pDeltaTime, pAlphaMul);
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

	if(this->zCurrentRound < this->zMaxRounds)
	{
		if(this->zGameWon)
		{
			this->zShowCorrectMarbles = true;
			if(!this->zScreenSwitching)
			{
				//this->zTweener.Tween(5.0f,
				//	ONCOMPLETE, ShowEndScreen, 
				//	END);
				//this->zScreenSwitching = true;
			}
		}
		
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

				if(!this->zGameWon)
				{
					for(int i = 0; i < COLORS; i++)
					{
						if(this->zColorChoices[i].GetImage()->HitTest(GetInput()->GetX_Position(), GetInput()->GetY_Position()))
						{
							if(this->zSelectedMarble != 0)
								this->zSelectedMarble->GetImage()->SetImage(GetResource()->GetMarble());

							this->zSelectedMarble = &this->zColorChoices[i];
							this->zColorChoices[i].GetImage()->SetImage(GetResource()->GetMarbleSelected());
						}
					}
					//Require that user selects a color first
					if(this->zSelectedMarble != 0)
					{
						for(int i = 0; i < COLS; i++)
						{
							if(this->zGrid[i][this->zCurrentRound].GetImage()->HitTest(GetInput()->GetX_Position(), GetInput()->GetY_Position()))
							{
								this->zSelectedRect = &this->zGrid[i][this->zCurrentRound];
							}
						}
					}

					if(this->zShowCheckButton)
					{
						if(this->zCheckButton->GetImage()->HitTest(GetInput()->GetX_Position(), GetInput()->GetY_Position()))
						{
							this->CalculateCorrectMarbles();

							this->zShowCheckButton = false;
							this->zCurrentRound++;

							this->zCheckButton->GetImage()->m_Y -= (GetResource()->GetMarble()->GetHeight() * this->zGraphics_Scale + this->zY_Spacing); 
						}
					}
				}
			}
		}

		if(this->zSelectedMarble && this->zSelectedRect)
		{
			this->MoveMarble();

			this->zSelectedRect = 0;
			this->zSelectedMarble = 0;
		}

	}
	else
	{
		//Display gameover Message
		this->zShowCorrectMarbles = true;

		if(!this->zScreenSwitching)
		{
			//this->zTweener.Tween(5.0f,
			//	ONCOMPLETE, ShowEndScreen, 
			//	END);
			//this->zScreenSwitching = true;
		}
	}
}

void Game::CountChoosenMarbles()
{
	int counter = 0;
	for(int i = 0; i < COLS; i++)
	{
		if(this->zGrid[i][this->zCurrentRound].GetImage()->GetImage() == GetResource()->GetMarble())
			counter++;
	}

	if(counter == 5)
	{
		this->zShowCheckButton = true;
	}
	else
	{
		this->zShowCheckButton = false;
	}
}

void Game::MoveMarble()
{
	CSprite* curMarble = this->zSelectedMarble->GetImage();
	curMarble->SetImage(GetResource()->GetMarble());

	CSprite* marble = new CSprite();
	marble->m_X = curMarble->m_X;
	marble->m_Y = curMarble->m_Y;
	marble->SetImage(GetResource()->GetMarble());
	marble->m_W = curMarble->m_W;
	marble->m_H = curMarble->m_H;
	marble->m_ScaleX = this->zGraphics_Scale;
	marble->m_ScaleY = this->zGraphics_Scale;
	marble->m_Color = curMarble->m_Color;

	this->zTweener.Tween(1.0f, 
		FLOAT, &marble->m_X, this->zSelectedRect->GetX(),
		FLOAT, &marble->m_Y, this->zSelectedRect->GetY(),
		EASING, Ease::sineIn,
		END);

	this->zSelectedRect->SetImage(marble);
}

void Game::Render()
{
	if(!this->zIsActive)
		return;

	Scene::Render();

	if(this->zShowCorrectMarbles)
	{
		for(int i = 0; i < COLS; i++)
		{
			this->zAnswers[i].Render();
		}
	}

	for(int i = 0; i < COLS; i++)
	{
		for (int j = 0; j < this->zMaxRounds; j++)
		{
			this->zGrid[i][j].Render();
		}
	}

	for(int i = 0; i < COLORS; i++)
	{
		this->zColorChoices[i].Render();
	}

	if(this->zShowCheckButton)
		this->zCheckButton->Render();

	for(int i = 0; i < COLS; i++)
	{
		for (int j = 0; j < this->zCurrentRound; j++)
		{
			this->zPins[i][j].Render();
		}
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
		Image* tempImage = &this->zGrid[i][this->zCurrentRound];
		for(int j = 0; j < COLS; j++)
		{
			int value = this->GetImageColorValue(this->zAnswers[j]);

			if(tempImage->HasSameColor(this->zAnswers[j].GetImageColor()) && usedMarbles[i] != true)
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
		Image* tempImage = &this->zGrid[i][this->zCurrentRound];
		for(int j = 0; j < COLS; j++)
		{
			int value = this->GetImageColorValue(this->zAnswers[j]);
	
			if(tempImage->HasSameColor(this->zAnswers[j].GetImageColor()) && usedMarbles[i] != true)
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
		this->zGameWon = true;
	}
	//Edit black/white pins
	for(int i = 0; i < COLS && (nrOfCorrect > 0 || nrOfCorrectPlaced > 0); i++)
	{
		if(nrOfCorrectPlaced > 0)
		{
			nrOfCorrectPlaced--;
			this->zPins[i][this->zCurrentRound].SetImageAlpha(1.0f);
			this->zPins[i][this->zCurrentRound].SetImageColor(CColor(0, 0, 0, 255));
		}
		else if(nrOfCorrect > 0)
		{
			nrOfCorrect--;
			this->zPins[i][this->zCurrentRound].SetImageAlpha(1.0f);
			this->zPins[i][this->zCurrentRound].SetImageColor(CColor(255, 255, 255, 255));
		}
	}

}

int Game::GetImageColorValue( const Image& pImage )
{
	if( pImage.HasSameColor(CColor(255, 255, 0, 255)) )// Yellow
	{
		return MARBLE_COLOR_YELLOW;
	}
	else if(pImage.HasSameColor(CColor(255, 0, 255, 255))) //Purple
	{
		return MARBLE_COLOR_PURPLE;
	}
	else if(pImage.HasSameColor(CColor(255, 0, 0, 255)))// Red
	{
		return MARBLE_COLOR_RED;
	}
	else if(pImage.HasSameColor(CColor(0, 255, 0, 255)))// Green
	{
		return MARBLE_COLOR_GREEN;
	}
	else if(pImage.HasSameColor(CColor(0, 100, 255, 255)))// Blue
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