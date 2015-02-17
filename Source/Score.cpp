#include "Score.h"

Score::Score(float pTime, int pRound, int pDifficulty)
{
	this->zRound = pRound;
	this->zTime = pTime;
	this->zScore = (pDifficulty - (this->zRound)) / pTime;
}

Score::Score()
{
	this->zRound = 0;
	this->zTime = 0;
	this->zScore = 0;
}

Score::~Score()
{

}

bool Score::operator<( const Score& pScore )
{
	if(this->zRound < pScore.zRound)
	{
		return true;
	}
	else if(this->zRound == pScore.zRound)
	{
		if(this->zTime < pScore.zTime)
			return true;
	}

	return false;
}