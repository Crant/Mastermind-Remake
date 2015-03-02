#pragma once

#include <vector>
#include <string>
#include <fstream>

#define NR_OF_TIERS 6

struct PerformanceMeasurement
{
	std::string name;
	float lastClock;
	float totalTime;
	int measures;
	float maxTime;

	PerformanceMeasurement()
	{
		lastClock = 0.0f;
		name = "";
		totalTime = 0.0f;
		measures = 0;
		maxTime = 0.0f;
	}
};

class MaloWPerformance
{
private:
	float PCFreq;
	std::vector<PerformanceMeasurement> perfs[NR_OF_TIERS];
	std::string filePath;
public:
	MaloWPerformance();
	virtual ~MaloWPerformance();

	void SetFilePath(const std::string filePath) {this->filePath = filePath;}
	void PreMeasure(std::string perfName, int tier);
	void PostMeasure(std::string perfName, int tier);
	void GenerateReport();
	void ResetAll();
};