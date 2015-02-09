#include "Input.h"

Input::Input()
{
	this->zTouched = false;
	this->zPrev_Touched = false;

	this->zBackKeyPressed = false;
	this->zHomeKeyPressed = false;

	// Set touch event callback handlers, single and multi-touch devices have different callbacks assigned
	if(s3ePointerGetInt(S3E_POINTER_MULTI_TOUCH_AVAILABLE) != 0)
	{
		s3ePointerRegister(S3E_POINTER_TOUCH_EVENT, (s3eCallback)MultiTouchButtonCB, 0);
		s3ePointerRegister(S3E_POINTER_TOUCH_MOTION_EVENT, (s3eCallback)MultiTouchMotionCB, 0);
	}
	else
	{
		s3ePointerRegister(S3E_POINTER_BUTTON_EVENT, (s3eCallback)TouchButtonCB, 0);
		s3ePointerRegister(S3E_POINTER_MOTION_EVENT, (s3eCallback)TouchMotionCB, 0);
	}

	s3eKeyboardRegister(S3E_KEYBOARD_KEY_EVENT, (s3eCallback) KeyEventCallback, NULL);
}

void Input::Update()
{
	s3ePointerUpdate();

	s3eKeyboardUpdate();

	//s3eKeyP s3eKeyBack
	if(s3eKeyboardGetState(s3eKeyBack) & S3E_KEY_STATE_PRESSED)
	{
		GetInput()->SetBackKeyStatus(true);
	}
}

void Input::Reset()
{
	this->zPrev_Touched = false;
	this->zTouched = false;

	GetInput()->SetBackKeyStatus(false);
}

/**
 * @fn    void Input::TouchButtonCB(s3ePointerEvent* event)
 *
 * @brief The system will call this callback when the user touches the screen.
 *
 * @param event   If non-null, the event.
 */
void Input::TouchButtonCB( s3ePointerEvent* event )
{
	GetInput()->zPrev_Touched = GetInput()->zTouched;
	GetInput()->zTouched = event->m_Pressed != 0;
	GetInput()->zX_Pos = event->m_x;
	GetInput()->zY_Pos = event->m_y;
}

/**
 * @fn    void Input::TouchMotionCB(s3ePointerMotionEvent* event)
 *
 * @brief The system will call this callback when the user moves their finger on the screen.
 *
 * @param event   If non-null, the event.
 */
void Input::TouchMotionCB( s3ePointerMotionEvent* event )
{
	GetInput()->zX_Pos = event->m_x;
	GetInput()->zY_Pos = event->m_y;
}

/**
 * @fn    void Input::MultiTouchButtonCB(s3ePointerTouchEvent* event)
 *
 * @brief The system will call this callback when the user touches the screen.
 *
 * @param event   If non-null, the event.
 */
void Input::MultiTouchButtonCB( s3ePointerTouchEvent* event )
{
	GetInput()->zPrev_Touched = GetInput()->zTouched;
	GetInput()->zTouched = event->m_Pressed != 0;
	GetInput()->zX_Pos = event->m_x;
	GetInput()->zY_Pos = event->m_y;
}

void Input::MultiTouchMotionCB( s3ePointerTouchMotionEvent* event )
{
	GetInput()->zX_Pos = event->m_x;
	GetInput()->zX_Pos = event->m_y;
}

void Input::KeyEventCallback( s3eKeyboardEvent* event )
{
	int32 homeKeyState = s3eKeyboardGetState(s3eKeyHome);
	int32 escKeyState = s3eKeyboardGetState(s3eKeyEsc);
	if(homeKeyState & S3E_KEY_STATE_PRESSED || escKeyState & S3E_KEY_STATE_PRESSED)
	{
		GetInput()->zHomeKeyPressed = true;
	}
	else if(homeKeyState & S3E_KEY_STATE_RELEASED || escKeyState & S3E_KEY_STATE_RELEASED)
	{
		GetInput()->zHomeKeyPressed = false;
	}

	if(homeKeyState & S3E_KEY_STATE_DOWN || escKeyState & S3E_KEY_STATE_DOWN)
	{
		GetInput()->zHomeKeyPressed = true;
	}
	else if(homeKeyState & S3E_KEY_STATE_UP || escKeyState & S3E_KEY_STATE_UP)
	{
		GetInput()->zBackKeyPressed = false;
	}
}

namespace
{
	static Input* input = 0;
}

bool InputInit()
{
	if(input)
		delete input;

	input = new Input();

	return input != 0;
}

Input* GetInput()
{
	if(!input)
		return 0;

	return input;
}

bool FreeInput()
{
	if ( !input )
		return false;

	delete input;
	input = 0;

	return true;
}