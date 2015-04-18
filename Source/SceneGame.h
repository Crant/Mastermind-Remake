#pragma once

#include "Scene.h"
#include "Image.h"
#include "Highscore.h"
#include "s3eDialog.h"
#include <map>

#define COLS 5
#define COLORS 5

//#define EASY 12
#define MAX_ROUNDS 10
//#define HARD 8
//#define VHARD 3

// Constants that are used to fit the game to different screen sizes
#define FONT_HEIGHT             10.0f
#define FONT_DESIGN_WIDTH       320.0f
#define GRAPHIC_DESIGN_WIDTH    768.0f
#define GRAPHIC_DESIGN_HEIGHT   1136.0f

enum GAME_STATE
{
	GAME_STATE_PLAYING,
	GAME_STATE_VICTORY,
	GAME_STATE_GAMEOVER,
	GAME_STATE_PICKING_ANSWERS,
	GAME_STATE_PAUSED
};

enum GAME_MODE
{
	GAME_MODE_SINGLE,
	GAME_MODE_MULTI
};

class Game : public Scene
{
private:
	Image* zSelectedMarble;
	Image* zSelectedRect;

	Image* zAnswers[COLS];
	Image* zColorChoices[COLORS];

	Image* zGrid[COLS][MAX_ROUNDS];
	Image* zPins[COLS][MAX_ROUNDS];

	Image* zArrow;
	Image* zCheckButton;
	Image* zHelpButton;

	Iw2DSceneGraph::CLabel* zGametimeLabel;
	Iw2DSceneGraph::CSprite* zBackground;
	//int zMaxRounds;
	int zCurrentRound;

	Highscore* zHighscore;
	GAME_STATE zGameState;

	float zActualFontHeight;
	float zFont_Scale;
	float zGraphics_ScaleX;
	float zGraphics_ScaleY;
	float zY_Spacing;

	float zCurrentGametimeSec;

	GAME_MODE zGameMode;

	int zButtonPressed;

private:
	void CheckInput();
	Iw2DSceneGraph::CColor GetRandomColor();

	void UpdateGameObjects(float pDeltaTime, float pAlphaMul);
	void UpdateGameTimer(float pDeltaTime, float pAlphaMul);

	void MoveMarble();
	void CountChoosenMarbles();
	void CalculateCorrectMarbles();

	void CreateTimeText(const int& hour, const int& minute, const int& seconds, std::string& text, bool typeEnabled = false);

	int GetImageColorValue(const Image* pImage);
	void SetupGame();
public:
	Game();
	Game(const char* pHashName) {this->SetName(pHashName);}
	virtual ~Game();

	// Initialize the Game
	void Init();
	
	void New_Game();

	//Update the Game
	void Update(float pDeltaTime /* = 0.0f */, float pAlphaMul /* = 1.0f */);

	//Render the game
	void Render();

	float GetGraphicsScaleY() {return this->zGraphics_ScaleY;}
	float GetGraphicsScaleX() {return this->zGraphics_ScaleX;}
	float GetFontScale() {return this->zFont_Scale;}
	float GetActualFontHeight() {return this->zActualFontHeight;}

	static int32 DialogCallback(s3eDialogCallbackData* data, void* userData);

	void SaveHighscore();

	Highscore* GetHighscore() {return this->zHighscore;}

	void SetGameMode(GAME_MODE pMode);

	void SetButtonPress(int button) {this->zButtonPressed = button;}

	virtual void OnBackKeyPress();

	virtual void OnPause();

	virtual void OnResume();

	virtual void OnSwap();

};