#include "s3e.h"
#include "IwDebug.h"
#include "iw2d.h"

#include "Mastermind.h"

// Main entry point for the application
int main()
{
    //Initialise graphics system(s)
    Iw2DInit();
	
	Mastermind* mastermind = new Mastermind();

	mastermind->Init();

	mastermind->Run();

	delete mastermind;
    //Terminate modules being used
    Iw2DTerminate();

    // Return
    return 0;
}