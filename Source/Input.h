#pragma once

#include "s3ePointer.h"
#include "s3eKeyboard.h"

/*
 @class Input

 @brief Input - The Input class is responsible for handling all pointer input.

 Example usage:
 @code
    // Set up input systems
    g_pInput = new Input();

    // Update
    while (!s3eDeviceCheckQuitRequest())
    {
        // Update input system
        g_pInput->Update();
    }

    // Cleanup
    delete g_pInput;
 @endcode

 */
class Input
{
private:
	//Previous Touched Status
	bool zPrev_Touched;
	//Current Touched Status
	bool zTouched;

	//Touched Position
	int zX_Pos; 
	int zY_Pos;

	bool zBackKeyPressed;
	bool zHomeKeyPressed;

private:
	//
	void SetBackKeyStatus(bool pValue) {this->zBackKeyPressed = pValue;}
public:
	Input();

	/**
     * @fn    void Input::Update()
     *
     * @brief Updates the input system, called every frame
     */
	void Update();
	/**
     * @fn    void Input::Reset()
     *
     * @brief Resets touch status, usually called after a touch event has been acknowledged
     */
	void Reset();

	/**
     * @fn    bool Input::GetTouchedStatus()
     *
     * @brief Returns the touch status
     */
	bool GetTouchedStatus() {return this->zTouched;}
	/**
     * @fn    bool Input::GetPrevTouchedStatus()
     *
     * @brief Returns the previous touch status
     */
	bool GetPrevTouchedStatus() {return this->zPrev_Touched;}

	/**
     * @fn    bool Input::GetX_Position()
     *
     * @brief Returns the X position of the last touch position
     */
	int GetX_Position() {return this->zX_Pos;}

	/**
     * @fn    bool Input::GetY_Position()
     *
     * @brief Returns the X position of the last touch position
     */
	int GetY_Position() {return this->zY_Pos;}
	/**
     * @fn    bool Input::GetHomeKeyStatus()
     *
     * @brief Returns the Home key touch status
     */
	bool GetHomeKeyStatus() {return this->zHomeKeyPressed;}
	/**
     * @fn    bool Input::GetBackKeyStatus()
     *
     * @brief Returns the Back key touch status
     */
	bool GetBackKeyStatus() {return this->zBackKeyPressed;}
	
	// Callbacks
	static void KeyEventCallback(s3eKeyboardEvent* event);
	static void TouchButtonCB(s3ePointerEvent* event);
	static void TouchMotionCB(s3ePointerMotionEvent* event);
	static void MultiTouchButtonCB(s3ePointerTouchEvent* event);
	static void MultiTouchMotionCB(s3ePointerTouchMotionEvent* event);
};

bool FreeInput();
Input* GetInput();
bool InputInit();