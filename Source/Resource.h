#pragma once

#include "Iw2D.h"
#include "Iw2DSceneGraph.h"

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
private:
	Iw2DSceneGraph::CAtlas* zMarbleAtlas;
	Iw2DSceneGraph::CAtlas* zMarble_SelectedAtlas;
	CIw2DImage* zPin;
	CIw2DImage* zMarble;
	CIw2DImage* zMarble_Selected;
	CIw2DImage* zMarbleBG;
	CIw2DImage* zGameBG;
	CIw2DImage* zBG;
	CIw2DImage* zCheckButton;
	CIw2DImage* zButton;
	CIw2DImage* zArrow;
	CIw2DFont*	zFont;

public:
	Resource();
	~Resource();

	Iw2DSceneGraph::CAtlas* GetMarbleAtlas()			{return this->zMarbleAtlas;}
	Iw2DSceneGraph::CAtlas* GetMarbleSelectedAtlas()	{return this->zMarble_SelectedAtlas;}
	CIw2DImage*				GetMarbleSelected()			{return this->zMarble_Selected;}
	CIw2DImage*				GetMarble()					{return this->zMarble;}
	CIw2DImage*				GetBG()						{return this->zBG;}
	CIw2DImage*				GetMarbleBG()				{return this->zMarbleBG;}
	CIw2DImage*				GetGameBG()					{return this->zGameBG;}
	CIw2DImage*				GetCheckButton()			{return this->zCheckButton;}
	CIw2DImage*				GetArrow()					{return this->zArrow;}
	CIw2DImage*				GetPin()					{return this->zPin;}
	CIw2DImage*				GetButton()					{return this->zButton;}
	CIw2DFont*				GetFont()					{return this->zFont;}
};

/**
 * @brief A pointer to the global Resource object.
 */
bool FreeResource();
Resource* GetResource();
bool ResourceInit();