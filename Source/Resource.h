#pragma once

#include "ClassUtil.h"
#include "Iw2D.h"
#include "Iw2DSceneGraph.h"

#define RESOURCE_MANAGER Resource::GetInstance()

/**
 * @class Resources
 *
 * @brief Resources class
 *
 * The that manages the lifetime of the following types of resources:
 * - Images
 * - Fonts
 * - Atlases
 */
class Resource
{
	CDEFINE_SINGLETONS(Resource)
private:
	//Iw2DSceneGraph::CAtlas* zButtonSmallAtlas;
	//Iw2DSceneGraph::CAtlas* zMarble_SelectedAtlas;
	CIw2DImage* zPin;
	CIw2DImage* zMarble;
	CIw2DImage* zMarble_Selected;
	CIw2DImage* zMarbleBG;
	CIw2DImage* zGameBG;
	CIw2DImage* zHighscoreBG;
	CIw2DImage* zBG;
	CIw2DImage* zBlankButton;
	CIw2DImage* zCheckButton;
	CIw2DImage* zButtonSmall;
	//CIw2DImage* zButtonSmallAnim;
	CIw2DImage* zArrow;
	CIw2DImage* zPinBG;
	CIw2DFont*	zFontNormal;
	CIw2DFont*  zFontBold;
	CIw2DFont*  zFontLarge;
public:

	void Init();
	void Release();

	//Iw2DSceneGraph::CAtlas* GetButtonSmallAtlas()			{return this->zButtonSmallAtlas;}
	//Iw2DSceneGraph::CAtlas* GetMarbleSelectedAtlas()	{return this->zMarble_SelectedAtlas;}
	CIw2DImage*				GetMarbleSelected()			{return this->zMarble_Selected;}
	CIw2DImage*				GetMarble()					{return this->zMarble;}
	CIw2DImage*				GetBG()						{return this->zBG;}
	CIw2DImage*				GetMarbleBG()				{return this->zMarbleBG;}
	CIw2DImage*				GetGameBG()					{return this->zGameBG;}
	CIw2DImage*				GetHighscoreBG()			{return this->zHighscoreBG;}
	CIw2DImage*				GetCheckButton()			{return this->zCheckButton;}
	CIw2DImage*				GetButton()					{return this->zBlankButton;}
	CIw2DImage*				GetArrow()					{return this->zArrow;}
	CIw2DImage*				GetPin()					{return this->zPin;}
	CIw2DImage*				GetPinBG()					{return this->zPinBG;}
	CIw2DImage*				GetButtonSmall()			{return this->zButtonSmall;}
	CIw2DFont*				GetFontNormal()				{return this->zFontNormal;}
	CIw2DFont*				GetFontBold()				{return this->zFontBold;}
	CIw2DFont*				GetFontLarge()				{return this->zFontLarge;}
};