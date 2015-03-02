#include "Resource.h"
#include "IwResManager.h"

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
	//IwGetResManager()->SetMode(CIwResManager::MODE_BUILD);
	IwGetResManager()->LoadGroup("Resources.group");

	CIwResGroup* group = IwGetResManager()->GetGroupNamed("Resources");

	IwGetResManager()->SetCurrentGroup(group);

	this->zMarble			= Iw2DCreateImageResource("Marble");
	this->zMarble_Selected	= Iw2DCreateImageResource("marble_selected");
	this->zMarbleBG			= Iw2DCreateImageResource("marble_bg");

	this->zCheckButton		= Iw2DCreateImageResource("check");
	this->zArrow			= Iw2DCreateImageResource("arrow");

	this->zPin				= Iw2DCreateImageResource("pin");
	this->zPinBG			= Iw2DCreateImageResource("pin_bg");

	this->zBlankButton		= Iw2DCreateImageResource("Button");
	this->zButtonSmall		= Iw2DCreateImageResource("ButtonSmall");

	this->zHighscoreBG		= Iw2DCreateImageResource("bkg2");
	this->zGameBG			= Iw2DCreateImageResource("bkg1");
	this->zBG				= Iw2DCreateImageResource("bkg");
	// Load fonts
	this->zFontNormal		= Iw2DCreateFontResource("arial10");
	this->zFontBold			= Iw2DCreateFontResource("arial10_bold");
	this->zFontLarge		= Iw2DCreateFontResource("arial14");

	// Load images
	//this->zMarble			= Iw2DCreateImage("textures/marble.png");
	//this->zMarble_Selected	= Iw2DCreateImage("textures/marble_selected.png");
	//this->zMarbleBG			= Iw2DCreateImage("textures/marble_bg.png");
	//
	//this->zCheckButton		= Iw2DCreateImage("textures/check.png");
	//this->zArrow			= Iw2DCreateImage("textures/arrow.png");
	//
	//this->zPin				= Iw2DCreateImage("textures/pin.png");
	//this->zPinBG			= Iw2DCreateImage("textures/pin_bg.png");
	//
	//this->zBlankButton		= Iw2DCreateImage("textures/Button.png");
	//this->zButtonSmall		= Iw2DCreateImage("textures/ButtonSmall.png");
	//
	//this->zHighscoreBG		= Iw2DCreateImage("textures/bkg2.png");
	//this->zGameBG			= Iw2DCreateImage("textures/bkg1.png");
	//this->zBG				= Iw2DCreateImage("textures/bkg.png");
	//// Load fonts
	//this->zFontNormal		= Iw2DCreateFont("fonts/arial10.gxfont");
	//this->zFontBold			= Iw2DCreateFont("fonts/arial10_bold.gxfont");
	//this->zFontLarge		= Iw2DCreateFont("fonts/arial14.gxfont");

	this->zButtonSmallAnim  = 0;//Iw2DCreateImage("textures/ButtonSmallAnim.png");
	//Create Atlas
	//int frame_width = (int)(this->zButtonSmallAnim->GetWidth()) / 2;
	//int frame_height = (int)(this->zButtonSmallAnim->GetHeight()) / 2;
	this->zButtonSmallAtlas = 0;//new Iw2DSceneGraph::CAtlas(frame_width, frame_height, 4, this->zButtonSmallAnim);
	this->zMarble_SelectedAtlas = 0;//new Iw2DSceneGraph::CAtlas(frame_width, frame_height, 1, this->zMarble_Selected);
}

Resource::~Resource()
{
	if(this->zButtonSmall)
		delete this->zButtonSmall;
	if(this->zButtonSmallAnim)
		delete this->zButtonSmallAnim;

	if(this->zPin)
		delete this->zPin;
	if(this->zPinBG)
		delete this->zPinBG;

	if(this->zArrow)
		delete this->zArrow;

	if(this->zBG)
		delete this->zBG;
	if(this->zGameBG)
		delete this->zGameBG;
	if(this->zHighscoreBG)
		delete this->zHighscoreBG;

	if(this->zMarble)
		delete this->zMarble;
	if(this->zMarble_Selected)
		delete this->zMarble_Selected;
	if(this->zMarbleBG)
		delete this->zMarbleBG;

	if(this->zCheckButton)
		delete this->zCheckButton;
	if(this->zBlankButton)
		delete this->zBlankButton;

	if(this->zFontNormal)
		delete this->zFontNormal;
	if(this->zFontBold)
		delete this->zFontBold;
	if(this->zFontLarge)
		delete this->zFontLarge;

	if(this->zButtonSmallAtlas)
		delete this->zButtonSmallAtlas;
	if(this->zMarble_SelectedAtlas)
		delete this->zMarble_SelectedAtlas;
}