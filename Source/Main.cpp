#include "s3e.h"
#include "IwDebug.h"
#include "iw2d.h"
#include "IwResManager.h"
#include "Mastermind.h"
//#include "s3eAndroidJNI.h"
//#include "jni.h"
//
//void StopMyLogo()
//{
//	if (!s3eAndroidJNIAvailable()) 
//		return;
//	JavaVM* jvm = (JavaVM*)s3eAndroidJNIGetVM();
//	JNIEnv* env = NULL;
//	jvm->GetEnv((void**)&env, JNI_VERSION_1_6);
//	jclass Activity = env->FindClass("com/android/mainactivity/MainActivity");
//	jfieldID fid = env->GetStaticFieldID(Activity, "m_Activity", "Lcom/android/mainactivity/MainActivity;");
//	 //Find the MainActivity class using the environment
//    jclass MainActivity = env->FindClass("com/android/mainactivity/MainActivity");
//	jobject m_Activity = env->GetStaticObjectField(MainActivity, fid);
//	jmethodID pMethod = env->GetMethodID(MainActivity, "StopMyLogo", "()Z");
//	env->CallVoidMethod(m_Activity, pMethod); //Or CallBooleanMethod()
//}

// Main entry point for the application
int main()
{
	//StopMyLogo();
    //Initialise graphics system(s)
    Iw2DInit();
	IwResManagerInit();
	
	Mastermind* mastermind = new Mastermind();

	mastermind->Init();

	mastermind->Run();
	
	delete mastermind;

    //Terminate modules being used
	IwResManagerTerminate();
    Iw2DTerminate();

    // Return
    return 0;
}