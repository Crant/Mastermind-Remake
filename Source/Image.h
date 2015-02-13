#pragma once

#include "Iw2DSceneGraph.h"

class Image
{
private:
	Iw2DSceneGraph::CSprite* zImageSprite;

public:
	Image();
	Image(Iw2DSceneGraph::CSprite* pImage);
	~Image();

	Image operator=(const Image& pRect);

	float GetX() {return this->zImageSprite->m_X;}
	float GetY() {return this->zImageSprite->m_Y;}

	float GetWidth() {return this->zImageSprite->m_W;}
	float GetHeight() {return this->zImageSprite->m_H;}
	
	void Update(float pDeltaTime, float pAlphaMul);
	void Render();

	Iw2DSceneGraph::CColor GetImageColor() {return this->zImageSprite->m_Color;}

	void SetImageColor(Iw2DSceneGraph::CColor pColor) {this->zImageSprite->m_Color = pColor;}
	void SetImageAlpha(float pValue) {this->zImageSprite->m_Alpha = pValue;}

	bool HasSameColor(const Iw2DSceneGraph::CColor& pColor) const;

	/**
     * @fn    bool Rect::SetImage(Iw2DSceneGraph::CSprite* pMarble)
     *
     * @brief Adds a sprite to the screen
     *
     * Adds a sprite to the screen 
	 * if it already has one delete the old one and replace with the new one
     *
     * @param pImage sprite to display on the screen
     *
     * @return true if no sprite exist else returns false
     */
	bool SetImage(Iw2DSceneGraph::CSprite* pImage);

	Iw2DSceneGraph::CSprite* GetImage() {return this->zImageSprite;}
};