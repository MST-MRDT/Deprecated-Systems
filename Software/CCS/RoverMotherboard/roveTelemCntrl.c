//	TODO: Port To Fresh Build (using TI example:			This version educational practice not for distro)
//
// roveTelemCnrtl.c
//
// first created:
//
// 01_22_2015_Owen_Chiaventone
//
// last edited:
//
//02_28_2015_Judah Schad_jrs6w7@mst.edu

//	this implements a single function BIOS thread that acts as the RoverMotherboard.cfg roveTelemCntrl handle
//
//	recieves a request for telem from the command thread,
//
//	requests telem from the device,
//
//	recieves telem from the device,
//
//	and posts telem to the roveTCPHandler thread

#include "roveIncludes/roveWareHeaders/roveTelemCntrl.h"

//BIOS_start inits this as the roveTelemCntrlTask Thread

//This is a RoverMotherboard.cfg object::		roveTelemCntrlTask		::		priority 1, vital_flag = t, 2048 persistent private stack

Void roveTelemCntrl(UArg arg0, UArg arg1){

	//external ref the scope for global uart handles

/*	extern UART_Handle uart0;
	extern UART_Handle uart1;
	extern UART_Handle uart2;
	extern UART_Handle uart3;
	extern UART_Handle uart4;
	extern UART_Handle uart5;
	extern UART_Handle uart6;
	extern UART_Handle uart7;

	TODO

	Thread Signaling:

	Post to TCPHandler

	}//endwhile:	(1)

	//postcondition: execution will not reach this state unless a serious error occurs

	System_printf("Rove Telem Cntrl Task Error: Forced Exit\n");
	System_flush();

	//exit Task

	Task_exit();
*/
}//endfnctn:		roveTelemContoller() Task Thread
