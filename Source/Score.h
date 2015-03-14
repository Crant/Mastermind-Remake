#pragma once

class Score
{
private:
	int zScore;
	int zRound;
	float zTime;
	
public:
	Score();
	Score(float pTime, int pRound, int pDifficulty);
	~Score();

	bool operator<(const Score& pScore);
	bool operator>(const Score& pScore);

	int GetScore()	{return this->zScore;}
	int GetRound()  {return this->zRound;}
	float GetTime() {return this->zTime;}

	void SetScore(int pScore) {this->zScore = pScore;}
	void SetRound(int pRound) {this->zRound = pRound;}
	void SetTime(float pTime) {this->zTime = pTime;}
	
};