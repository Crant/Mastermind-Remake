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
