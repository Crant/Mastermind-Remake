#include "Score.h"

Score::Score(float pTime, int pRound, int pDifficulty)
{
	this->zRound = pRound + 1;
	this->zTime = pTime;
	this->zScore = (pDifficulty - (pRound + 1)) * 1000 / pTime;
}

Score::~Score()
{

}