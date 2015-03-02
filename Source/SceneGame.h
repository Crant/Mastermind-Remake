#pragma once

#include "Scene.h"
#include "Image.h"
#include "Highscore.h"
#include <map>

#include "MaloWPerformance.h"
#define COLS 5
#define COLORS 5

#define EASY 12
#define NORMAL 10
#define HARD 8
#define VHARD 3

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

	Image** zAnswers;
	Image** zColorChoices;
	Image*** zGrid;
	Image*** zPins;

	Image* zArrow;
	Image* zCheckButton;
	Iw2DSceneGraph::CLabel* zFinalLabel;
	Iw2DSceneGraph::CLabel* zGametimeLabel;
	Iw2DSceneGraph::CSprite* zBackground;
	int zMaxRounds;
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
//#define _PERF_
#ifdef _PERF_
	MaloWPerformance* zPerf;
#endif
private:
	void CheckInput();
	Iw2DSceneGraph::CColor GetRandomColor();

	void UpdateGameObjects(float pDeltaTime, float pAlphaMul);
	void UpdateGameTimer(float pDeltaTime, float pAlphaMul);

	void MoveMarble();
	void CountChoosenMarbles();
	void CalculateCorrectMarbles();

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

	void SwitchToScene(const char* pScene_Name);
	
	
	float GetGraphicsScaleY() {return this->zGraphics_ScaleY;}
	float GetGraphicsScaleX() {return this->zGraphics_ScaleX;}
	float GetFontScale() {return this->zFont_Scale;}
	float GetActualFontHeight() {return this->zActualFontHeight;}

	static void ShowEndScreen(CTween* pTween);
	static void ShowPauseScreen(CTween* pTween);

	void SaveHighscore();

	Highscore* GetHighscore() {return this->zHighscore;}

	void SetGameMode(GAME_MODE pMode);
	void SetAnswers(Image** colors);

	virtual void OnBackKeyPress();

	virtual void OnPause();

	virtual void OnResume();
};