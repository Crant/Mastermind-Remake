#pragma once

#include "Scene.h"
#include "Image.h"
#include "Highscore.h"
#include <map>

#define COLS 5
#define COLORS 5

#define EASY 12
#define NORMAL 10
#define HARD 8
#define VHARD 3

// Constants that are used to fit the game to different screen sizes
#define FONT_HEIGHT             15.0f
#define FONT_DESIGN_WIDTH       320.0f
#define GRAPHIC_DESIGN_WIDTH    768.0f
#define GRAPHIC_DESIGN_HEIGHT   1136.0f

enum GAME_STATE
{
	GAME_STATE_PLAYING,
	GAME_STATE_VICTORY,
	GAME_STATE_GAMEOVER
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
	float zGraphics_Scale;
	float zY_Spacing;

	float zCurrentGametimeSec;

	bool zShowCorrectMarbles;
	bool zScreenSwitching;
public:
	Game();
	Game(const char* pHashName) {this->SetName(pHashName);}
	virtual ~Game();

	Iw2DSceneGraph::CColor GetRandomColor();

	// Initialize the Game
	void Init();
	
	void New_Game();

	//Update the Game
	void Update(float pDeltaTime /* = 0.0f */, float pAlphaMul /* = 1.0f */);

	//Render the game
	void Render();

	void SwitchToScene(const char* pScene_Name);
	void UpdateGameObjects(float pDeltaTime, float pAlphaMul);
	void UpdateGameTimer(float pDeltaTime, float pAlphaMul);

	void MoveMarble();
	void CountChoosenMarbles();
	void CalculateCorrectMarbles();
	int GetImageColorValue(const Image* pImage);

	float GetGraphicsScale() {return this->zGraphics_Scale;}
	float GetFontScale() {return this->zFont_Scale;}
	float GetActualFontHeight() {return this->zActualFontHeight;}

	static void ShowEndScreen(CTween* pTween);
	void ShowPauseScreen();
};
