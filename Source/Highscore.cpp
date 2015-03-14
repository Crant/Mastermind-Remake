#include "Highscore.h"

#include "ClassUtil.h"
#include <fstream>

#define FILENAME "highscore.mmh"

Highscore::Highscore()
{
}

Highscore::~Highscore()
{
	for(std::vector<Score*>::iterator it = this->zHighscoreList.begin(); it != this->zHighscoreList.end(); it++)
	{
		if(*it)
			delete (*it);
	}
}

void Highscore::Sort()
{
	for (int i = 1; i < (int)this->zHighscoreList.size(); i++)
	{
		int j = i;
		while (j > 0 && (*this->zHighscoreList[j-1]) > (*this->zHighscoreList[j]) )
		{
			Score* temp = this->zHighscoreList[j - 1];
			this->zHighscoreList[j - 1] = this->zHighscoreList[j];
			this->zHighscoreList[j] = temp;
		}
	}
}

bool Highscore::SaveHighscore()
{
	std::ofstream out;

	out.open(FILENAME, std::ios::binary | std::ios::trunc);

	if(!out)
		return false;

	int size = this->zHighscoreList.size();
	out.write(reinterpret_cast<const char*>(&size), sizeof(int));

	for(int i = 0; i < size; i++)
	{
		int score = this->zHighscoreList[i]->GetScore();
		out.write(reinterpret_cast<const char*>(&score), sizeof(int));

		float time = this->zHighscoreList[i]->GetTime();
		out.write(reinterpret_cast<const char*>(&time), sizeof(float));

		int round = this->zHighscoreList[i]->GetRound();
		out.write(reinterpret_cast<const char*>(&round), sizeof(int));

	}
	out.close();
	return true;
}

void Highscore::LoadHighscore()
{
	std::ifstream in;

	in.open(FILENAME, std::ios::binary | std::ios::in);

	if(!in)
		return;

	int size = 0;
	in.read(reinterpret_cast<char*>(&size), sizeof(int));

	for(int i = 0; i < size; i++)
	{
		Score* scoreClass = new Score();

		int score = 0;
		in.read(reinterpret_cast<char*>(&score), sizeof(int));

		float time = 0;
		in.read(reinterpret_cast<char*>(&time), sizeof(float));

		int round = 0;
		in.read(reinterpret_cast<char*>(&round), sizeof(int));

		scoreClass->SetScore(score);
		scoreClass->SetTime(time);
		scoreClass->SetRound(round);

		this->zHighscoreList.push_back(scoreClass);
	}
	in.close();

	this->Sort();
}

void Highscore::AddScore( Score* pScore )
{
	if(this->zHighscoreList.size() >= MAX_SCORES)
	{
		int lastPos = this->zHighscoreList.size() - 1;
		if((*pScore) < (*this->zHighscoreList[lastPos]))
		{
			delete this->zHighscoreList[lastPos];
			this->zHighscoreList[lastPos] = pScore;
		}
	}
	else
	{
		this->zHighscoreList.push_back(pScore);
	}
	this->Sort();
}

void Highscore::ResetScore()
{
	for(std::vector<Score*>::iterator it = this->zHighscoreList.begin(); it != this->zHighscoreList.end(); it++)
	{
		if(*it)
			delete (*it);
	}
	this->zHighscoreList.clear();
}

std::vector<Score*> Highscore::GetScoreList()
{
	return this->zHighscoreList;
}

void TimeHelper::CalcTime( int& hour, int& minute, int& seconds, const int& timer )
{
	minute = (timer / 60);
	hour = minute / 60;
	minute = minute - (hour * 60);

	seconds = timer - (minute * 60) - (hour * 3600);
}