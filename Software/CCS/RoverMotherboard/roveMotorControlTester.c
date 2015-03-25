/*
 * roveHardwareTester.c
 *
 *  Created on: Mar 3, 2015
 *      Author: owen
 *
 * Task that will test all of the hardware functionality
 * Should be disabled most of the time. Only run it when you want to
 * do hardware testing.
 */
#include "roveIncludes/roveWareHeaders/roveMotorControlTester.h"


Void roveMotorControlTester(UArg arg0, UArg arg1){

	char messageBuffer[35] = "This is a test of motor control";

	int messageSize = 32;

	int speed = 0;

	int loopCount = 0;

	extern UART_Handle uart0;
	extern UART_Handle uart1;
	extern UART_Handle uart2;
	extern UART_Handle uart3;
	extern UART_Handle uart4;
	extern UART_Handle uart5;
	extern UART_Handle uart6;
	extern UART_Handle uart7;

	System_printf("messageBuffer holds %s \n", messageBuffer);
	System_flush();

	System_printf("messageSize holds %d \n", messageSize);
	System_flush();

	System_printf("speed holds %d \n", speed);
	System_flush();


	System_printf("Starting motor control diagnostic\n");
	System_flush();

	while(1){

		if(speed > 900){

			speed = 0;

		}//endif:	(speed > 900)

		speed = speed + 10;

		System_printf("messageBuffer holds %s \n", messageBuffer);
		System_flush();

		System_printf("messageSize holds %d \n", messageSize);
		System_flush();

		System_printf("speed holds %d \n", speed);
		System_flush();

		ms_delay(1000);

		messageSize = generateMotorCommand(speed, messageBuffer);

		//	#define ONBOARD_ROVECOMM 19
		//	UART2		U2TX PA7

		deviceWrite(ONBOARD_ROVECOMM, messageBuffer, messageSize);

		ms_delay(1000);

		loopCount = loopCount + 1;

		System_printf("messageBuffer holds %s \n", messageBuffer);
		System_flush();

		System_printf("messageSize holds %d \n", messageSize);
		System_flush();

		System_printf("speed holds %d \n", speed);
		System_flush();

		System_printf("Finished testing loop number %d \n", loopCount);
		System_flush();
		Task_exit();

	}//endwhile:	(1)

}//endfnctn:		roveMotorControlTester(UArg arg0, UArg arg1)
