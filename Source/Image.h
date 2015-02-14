#pragma once

#include "Iw2DSceneGraph.h"

class Image : public Iw2DSceneGraph::CSprite
{
private:

public:
	Image();
	virtual ~Image();

	float GetX() {return this->m_X;}
	float GetY() {return this->m_Y;}

	float GetWidth() {return this->m_W;}
	float GetHeight() {return this->m_H;}

	void SetVisibility(bool pVis) {this->m_IsVisible = pVis;}
	bool IsVisible() {return this->m_IsVisible;}

	Iw2DSceneGraph::CColor GetImageColor() {return this->m_Color;}

	void SetImageColor(Iw2DSceneGraph::CColor pColor) {this->m_Color = pColor;}
	void SetImageAlpha(float pValue) {this->m_Alpha = pValue;}

	bool HasSameColor(const Iw2DSceneGraph::CColor& pColor) const;
};