#pragma once

#include "Scene.h"
#include "Image.h"
#include "Button.h"
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

class Game : public Scene
{
private:
	Image* zSelectedMarble;
	Image* zSelectedRect;

	Image* zAnswers;
	Image* zColorChoices;
	Image** zGrid;
	Image** zPins;

	Image* zCheckButton;

	int zMaxRounds;
	int zCurrentRound;

	float zActualFontHeight;
	float zFont_Scale;
	float zGraphics_Scale;
	float zY_Spacing;

	bool zGameWon;
	bool zGameOver;
	bool zShowCorrectMarbles;
	bool zShowCheckButton;
	bool zScreenSwitching;
public:
	Game();
	Game(const char* pHashName) {this->SetName(pHashName);}
	~Game();

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

	void MoveMarble();
	void CountChoosenMarbles();
	void CalculateCorrectMarbles();
	int GetImageColorValue(const Image& pImage);

	float GetGraphicsScale() {return this->zGraphics_Scale;}
	float GetFontScale() {return this->zFont_Scale;}
	float GetActualFontHeight() {return this->zActualFontHeight;}

	static void ShowEndScreen(CTween* pTween);
	void ShowPauseScreen();
};