// #include "Image.h"
// 
// using namespace Iw2DSceneGraph;
// 
// Image::Image()
// {
// 	this->zImageSprite = 0;
// }
// 
// Image::Image( CSprite* pImage )
// {
// 	this->zImageSprite = pImage;
// }
// 
// Image::~Image()
// {
// 	if(this->zImageSprite)
// 		delete this->zImageSprite;
// }
// 
// bool Image::SetImage( CSprite* pMarble )
// {
// 	if(this->zImageSprite != 0)
// 	{
// 		delete this->zImageSprite;
// 		this->zImageSprite = pMarble;
// 		return false;
// 	}
// 
// 	this->zImageSprite = pMarble;
// 	return true;
// }
// 
// void Image::Update( float pDeltaTime, float pAlphaMul )
// {
// 	if(this->zImageSprite)
// 		this->zImageSprite->Update(pDeltaTime, pAlphaMul);
// }
// 
// void Image::Render()
// {
// 	if(this->zImageSprite)
// 		this->zImageSprite->Render();
// }
// 
// bool Image::HasSameColor( const Iw2DSceneGraph::CColor& pColor ) const
// {
// 	CColor color = this->zImageSprite->m_Color;
// 	return !(color.r != pColor.r || color.g != pColor.g || color.b != pColor.b);
// }

#include "Image.h"

Image::Image()
{
}

Image::~Image()
{
}

bool Image::HasSameColor( const Iw2DSceneGraph::CColor& pColor ) const
{
	return !(this->m_Color.r != pColor.r || this->m_Color.g != pColor.g || this->m_Color.b != pColor.b);
}
