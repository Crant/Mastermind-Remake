#pragma once

class Score
{
private:
	int zScore;
	int zRound;
	float zTime;
	
public:
	Score(float pTime, int pRound, int pDifficulty);
	~Score();
};