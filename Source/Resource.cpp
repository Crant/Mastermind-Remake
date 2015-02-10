#include "Resource.h"

namespace
{
	static Resource* resource = 0;
}

bool ResourceInit()
{
	if(resource)
		delete resource;

	resource = new Resource();

	return resource != 0;
}

Resource* GetResource()
{
	if(!resource)
		return 0;

	return resource;
}

bool FreeResource()
{
	if ( !resource )
		return false;

	delete resource;
	resource = 0;

	return true;
}

Resource::Resource()
{
	// Load images
	this->zGameBG			= Iw2DCreateImage("textures/bkg2.png");
	this->zMarble			= Iw2DCreateImage("textures/marble_t.png");
	this->zMarble_Selected	= Iw2DCreateImage("textures/marble_selected.png");
	this->zMarbleBG			= Iw2DCreateImage("textures/marble_bg.png");
	this->zCheckButton		= Iw2DCreateImage("textures/check.png");
	this->zArrow			= Iw2DCreateImage("textures/arrow.png");
	this->zPin				= Iw2DCreateImage("textures/pin.png");
	this->zButton			= Iw2DCreateImage("textures/button.png");
	this->zBG				= Iw2DCreateImage("textures/bkg.png");
	// Load fonts
	this->zFont				= Iw2DCreateFont("fonts/font_small.gxfont");

	//Create Atlas
	int frame_width = (int)(this->zMarble->GetWidth());
	int frame_height = (int)(this->zMarble->GetHeight());
	this->zMarbleAtlas = new Iw2DSceneGraph::CAtlas(frame_width, frame_height, 1, this->zMarble);
	this->zMarble_SelectedAtlas = new Iw2DSceneGraph::CAtlas(frame_width, frame_height, 1, this->zMarble_Selected);
}

Resource::~Resource()
{
	if(this->zButton)
		delete this->zButton;
	if(this->zPin)
		delete this->zPin;
	if(this->zArrow)
		delete this->zArrow;
	if(this->zBG)
		delete this->zBG;
	if(this->zGameBG)
		delete this->zGameBG;
	if(this->zMarble)
		delete this->zMarble;
	if(this->zMarble_Selected)
		delete this->zMarble_Selected;
	if(this->zMarbleBG)
		delete this->zMarbleBG;
	if(this->zCheckButton)
		delete this->zCheckButton;
	if(this->zFont)
		delete this->zFont;

	if(this->zMarbleAtlas)
		delete this->zMarbleAtlas;
	if(this->zMarble_SelectedAtlas)
		delete this->zMarble_SelectedAtlas;
}