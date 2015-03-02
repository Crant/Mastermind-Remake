#pragma once

#include "Score.h"
#include <vector>

#define MAX_SCORES 10

class Highscore 
{
private:
	std::vector<Score*> zHighscoreList;

private:
	void Sort();
public:
	Highscore();
	~Highscore();

	void AddScore(Score* pScore);
	void ResetScore();

	bool SaveHighscore();
	void LoadHighscore();

	std::vector<Score*> GetScoreList();
};

namespace TimeHelper
{
	void CalcTime(int& hour, int& minute, int& seconds, const int& timer);
}