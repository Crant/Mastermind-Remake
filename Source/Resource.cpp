#include "Resource.h"
#include "IwResManager.h"

CDECLARE_SINGLETONS(Resource)

void Resource::Init()
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
}

void Resource::Release()
{
	SAFE_DELETE(this->zPin);
	SAFE_DELETE(this->zPinBG);

	SAFE_DELETE(this->zArrow);

	SAFE_DELETE(this->zBG);
	SAFE_DELETE(this->zGameBG);
	SAFE_DELETE(this->zHighscoreBG);

	SAFE_DELETE(this->zMarble);
	SAFE_DELETE(this->zMarbleBG);
	SAFE_DELETE(this->zMarble_Selected);
	
	SAFE_DELETE(this->zCheckButton);
	SAFE_DELETE(this->zBlankButton);
	SAFE_DELETE(this->zButtonSmall);

	SAFE_DELETE(this->zFontBold);
	SAFE_DELETE(this->zFontLarge);
	SAFE_DELETE(this->zFontNormal);
}
