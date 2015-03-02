#include "MaloWPerformance.h"
#include "s3e.h"

using namespace std;

MaloWPerformance::MaloWPerformance()
{
	//LARGE_INTEGER li;
	//QueryPerformanceFrequency(&li);
	//PCFreq = float(li.QuadPart)/1000.0f;
	this->filePath = "MPR.txt";
}

MaloWPerformance::~MaloWPerformance()
{

}

void MaloWPerformance::PreMeasure( string perfName, int tier )
{
	//LARGE_INTEGER li;
	//QueryPerformanceCounter(&li);
	//float Timer = (li.QuadPart / PCFreq);
	float timer = s3eTimerGetMs();

	bool found = false;
	for(int i = 0; i < this->perfs[tier].size(); i++)
	{
		if(this->perfs[tier][i].name == perfName)
		{
			this->perfs[tier][i].lastClock = timer;
			found = true;
		}
	}
	if(!found)
	{
		PerformanceMeasurement pm;
		pm.name = perfName;
		pm.totalTime = 0.0f;
		pm.measures = 1;
		pm.lastClock = timer;
		pm.maxTime = 0.0f;
		this->perfs[tier].push_back(pm);
	}
}

void MaloWPerformance::PostMeasure( string perfName, int tier )
{
	/*LARGE_INTEGER li;
	QueryPerformanceCounter(&li);
	float Timer = (li.QuadPart / PCFreq);
	*/
	float timer = s3eTimerGetMs();
	for(int i = 0; i < this->perfs[tier].size(); i++)
	{
		if(this->perfs[tier][i].name == perfName)
		{
			float timeDiff = timer - this->perfs[tier][i].lastClock;
			this->perfs[tier][i].totalTime += timeDiff;
			this->perfs[tier][i].measures++;
			if (timeDiff > this->perfs[tier][i].maxTime)
				this->perfs[tier][i].maxTime = timeDiff;
		}
	}
}

void MaloWPerformance::GenerateReport()
{
	fstream writeFile;
	writeFile.open(this->filePath.c_str(), ios::out | ios::trunc);
	writeFile << "Performance report, times in milliseconds, IE 100 in the file = 0.1 seconds." << endl << endl;

	for(int u = 0; u < NR_OF_TIERS; u++)
	{
		writeFile << "           Tier " << u + 1 << ": " << endl;
		for(int i = 0; i < this->perfs[u].size(); i++)
		{
			writeFile << this->perfs[u][i].name << ": " << endl << "Max: " << this->perfs[u][i].maxTime <<
				"     Avg: " << this->perfs[u][i].totalTime / this->perfs[u][i].measures << "     Tot:" <<
				this->perfs[u][i].totalTime << ", Measures: " << this->perfs[u][i].measures << endl << endl;
		}
		writeFile << endl;
	}

	writeFile.close();
}

void MaloWPerformance::ResetAll()
{
	/*LARGE_INTEGER li;
	QueryPerformanceCounter(&li);
	float Timer = (li.QuadPart / PCFreq);*/
	float timer = s3eTimerGetMs();

	for(int u = 0; u < NR_OF_TIERS; u++)
	{
		for(int i = 0; i < this->perfs[u].size(); i++)
		{
			this->perfs[u][i].measures = 1;
			this->perfs[u][i].totalTime = 0.0f;
			this->perfs[u][i].lastClock = timer;
			this->perfs[u][i].maxTime = 0.0f;
		}
	}
}