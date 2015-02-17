#pragma once

#include "Score.h"
#include <vector>

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