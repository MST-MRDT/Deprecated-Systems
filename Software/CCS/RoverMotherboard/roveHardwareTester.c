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
#include "roveIncludes/roveWareHeaders/roveHardwareTester.h"


Void roveHardwareTester(UArg arg0, UArg arg1)
{
	char buffer[35] = "This is a test of device number _\0";
	int i, j;

	extern UART_Handle uart0;
	extern UART_Handle uart1;
	extern UART_Handle uart2;
	extern UART_Handle uart3;
	extern UART_Handle uart4;
	extern UART_Handle uart5;
	extern UART_Handle uart6;
	extern UART_Handle uart7;

	System_printf("Starting hardware diagnostic\n");
	System_flush();

	System_printf("Testing GPIO abstraction on All pins\n");
	System_flush();
	for(i = 0; i < 2; i++)
	{
		System_printf("Testing High\n");
		System_flush();
		for(j = 0; j < 10; j++) //Test all 10 mux pins
			digitalWrite(j, HIGH);
		ms_delay(60);

		System_printf("Testing Low\n");
		System_flush();
		for(j = 0; j < 10; j++)
			digitalWrite(j, LOW);
		ms_delay(60);
	}

	System_printf("Testing UART devices\n");
	System_flush();
	UART_write(uart0, "This is uart 0", 15);
	System_printf("Uart 0 tested\n");
	System_flush();
	UART_write(uart1, "This is uart 1", 15);
	System_printf("Uart 1 tested\n");
		System_flush();
	UART_write(uart2, "This is uart 2", 15);
	System_printf("Uart 2 tested\n");
		System_flush();
	UART_write(uart3, "This is uart 3", 15);
	System_printf("Uart 3 tested\n");
		System_flush();
	UART_write(uart4, "This is uart 4", 15);
	System_printf("Uart 4 tested\n");
		System_flush();
	UART_write(uart5, "This is uart 5", 15);
	System_printf("Uart 5 tested\n");
		System_flush();
	UART_write(uart6, "This is uart 6", 15);
	System_printf("Uart 6 tested\n");
		System_flush();
	UART_write(uart7, "This is uart 7", 15);
	System_printf("Uart 7 tested\n");
		System_flush();

	System_printf("Testing full device access\n");
	System_flush();
	for(i = 0; i < 18; i++)
	{
		//System_printf("Testing Device #%d\n", i);
		//System_flush();
		buffer[32] = '0' + (char)i;
		deviceWrite(i, buffer, 35);
		//ms_delay(10);
	}

	System_printf("Finished testing all devices\n");
	System_flush();
	Task_exit();
}
