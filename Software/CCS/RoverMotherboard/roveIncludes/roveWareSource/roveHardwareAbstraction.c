/*
 * roveHardwareAbstraction.c
 *
 *  Created on: Mar 3, 2015
 *      Author: Owen
 */


#include "../roveWareHeaders/roveHardwareAbstraction.h"

void pinMode(int pin, int mode)
{
	//No idea how to start this one
}

void digitalWrite(int pin, int val)
{
	System_printf("DigitalWrite Called, writing %d\n", val);
	System_flush();
	switch(pin)
	{
	case U3_MUX_S0:
		if(val == LOW)
		{
		//Not the right port, etc
			GPIOPinWrite(GPIO_PORTH_BASE, GPIO_PIN_0, (0));
		} else if (val == HIGH)
		{
			GPIOPinWrite(GPIO_PORTH_BASE, GPIO_PIN_0, (~0));
		}
		break;
	case U3_MUX_S1:
		break;
	} //endswitch
	return;

}

int deviceWrite(int rs485jack, char* buffer, int buf_len)
{
	//Debug
	System_printf("deviceWrite called\n");
	System_flush();
	/*
	switch(rs485jack)
	{
	case 1:
		GPIO_write(U1_MUX_S1, LOW)
		digitalWrite(U1_MUX_S0, LOW)
		//Write buffer to UART
		break;
	//etc.
	}
	*/

}

int deviceRead(int rs485jack, char* buffer, int buf_len, int timeout)
{
	/*
	switch(rs485jack)
	{
	case 1:
		digitalWrite(U1_MUX_S1, LOW)
		digitalWrite(U1_MUX_S0, LOW)
		//Read UART into buffer
		break;
	//etc.
	}
	*/
}

void initUarts()
{

}

void initMuxGPIO()
{
	//Probably just a bunch of pinModes.
}
