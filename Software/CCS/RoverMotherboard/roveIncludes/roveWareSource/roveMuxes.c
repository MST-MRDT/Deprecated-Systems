//	TODO: Port To Fresh Build (using TI example:			This version educational practice not for distro)
//
// roveTiming.h
//
// first created:
//
// 04_20_2014_Keenan_Johnson
//
// last edited:
//
//02_25_2015_Judah Schad_jrs6w7@mst.edu

//MRDesign Team:: 	roveWare::		muxing functions to write S0, S1 for multiplexer devices

#include "../roveWareHeaders/roveMuxes.h"

// Function to change mux 1 to

// RS-485 transceivers below

// 1, 8, ,9

// EK_TM4C1294XL_PH0 : U3_MUX_S0
// EK_TM4C1294XL_PH1 : U3_MUX_S1

void mux_1(int rs_485_transceiver)
{

	switch(rs_485_transceiver){

		case 1 :

			GPIOPinWrite(GPIO_PORTH_BASE, (GPIO_PIN_0 | GPIO_PIN_1), (0));

		break;

		case 8 :

			GPIOPinWrite(GPIO_PORTH_BASE, (GPIO_PIN_0), (~0));
			GPIOPinWrite(GPIO_PORTH_BASE, (GPIO_PIN_1), (0));

		break;

		case 9 :

			GPIOPinWrite(GPIO_PORTH_BASE, (GPIO_PIN_0), (0));
			GPIOPinWrite(GPIO_PORTH_BASE, (GPIO_PIN_1), (~0));

		break;

		default :

		// Not a valid input

		System_printf("Not a valid MUX_1 Transceiver");
		System_flush();

		break;
	}//endswitch

}//endfnctn mux_1

// Function to change mux 2 to

// RS-485 transceivers below

// 2, 7, 10

// EK_TM4C1294XL_PM6 : U4_MUX_S0
// EK_TM4C1294XL_PM7 : U4_MUX_S1

void mux_2(int rs_485_transceiver){

	switch(rs_485_transceiver){

		case 2 :

			GPIOPinWrite(GPIO_PORTM_BASE, (GPIO_PIN_6 | GPIO_PIN_7), (0));

		break;

		case 7 :

			GPIOPinWrite(GPIO_PORTM_BASE, (GPIO_PIN_6), (~0));
			GPIOPinWrite(GPIO_PORTM_BASE, (GPIO_PIN_7), (0));

		break;

		case 10 :

			GPIOPinWrite(GPIO_PORTM_BASE, (GPIO_PIN_6), (0));
			GPIOPinWrite(GPIO_PORTM_BASE, (GPIO_PIN_7), (~0));

		break;

		default :

		// Not a valid input

		System_printf("Not a valid MUX_2 Transceiver");
		System_flush();

		break;

	}//endswitch

}//endfnctn mux_2

// Function to change mux 3 to

// RS-485 transceivers below

// 3, 6, 11

// EK_TM4C1294XL_PL0 : U5_MUX_S0
// EK_TM4C1294XL_PL1 : U5_MUX_S1

void mux_3(int rs_485_transceiver){

	switch(rs_485_transceiver){

		case 3 :

			GPIOPinWrite(GPIO_PORTL_BASE, (GPIO_PIN_0 | GPIO_PIN_1), (0));

		break;

		case 6 :

			GPIOPinWrite(GPIO_PORTL_BASE, (GPIO_PIN_0), (~0));
			GPIOPinWrite(GPIO_PORTL_BASE, (GPIO_PIN_1), (0));

		break;

		case 11 :

			GPIOPinWrite(GPIO_PORTL_BASE, (GPIO_PIN_0), (0));
			GPIOPinWrite(GPIO_PORTL_BASE, (GPIO_PIN_1), (~0));

		break;

		default :

		// Not a valid input

		System_printf("Not a valid MUX_3 Transceiver");
		System_flush();

		break;

	}//endswitch

}//endfnctn mux_3
