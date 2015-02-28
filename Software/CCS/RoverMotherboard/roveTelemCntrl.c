//	TODO: Port To Fresh Build (using TI example:			This version educational practice not for distro)
//
// roveTcpHandler.c
//
// first created:
//
// 01_22_2015_Owen_Chiaventone
//
// last edited:
//
//02_24_2015_Judah Schad_jrs6w7@mst.edu

//	this implements a single function BIOS thread that acts as the RoverMotherboard.cfg roveTelemCntrl handle
//
//	recieves a request for telem from the command thread,
//
//	requests telem from the device,
//
//	recieves telem from the device,
//
//	and posts telem to the roveTCPHandler thread

#include "roveIncludes/roveTelemCntrl.h"

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

	//init RoveCom signal struct

	signal_telem_control_struct signal_telem_struct;

	//init RoveCom recieve data struct

	struct test_device_data_struct test_device_data_struct;

	//init RoveCom send data struct

	//struct package_telem_struct package_telem_struct;

	bool test_telem_is_valid = false;

	ms_delay( 10 );

	System_printf("Telem 		init \n");
	System_printf("\n");
	System_printf("\n");
	System_flush();

	ms_delay( 10 );

	//Mailbox_post(toBaseStationMailbox, &test_device_data_struct, 3600);

	while(1){

		//clean the struct for command signaling    .id and .sig are enum

		signal_telem_struct.id = onenull_device;

		signal_telem_struct.sig = null_signal;

		//clean the struct for uart read     		.id is enum 	.value is uint8_t

		//the struct is (packed)

		test_device_data_struct.id = onenull_device;

		test_device_data_struct.value = 0;


//TODO

		//The following call also opens implicitly task_sleeping, roveTelemCntrlTask

		//BIOS will next reawake roveTelemCntrlTask here, when roveCmdCntrl Thread posts a request signal for telemetry on this Mail.Semaphore.Pend

		//This is a RoverMotherboard.cfg object::		signalTelemMailbox::		1024, max msg = 10

		Mailbox_pend(signalTelemMailbox, &signal_telem_struct, 600);

		ms_delay( 10 );

		System_printf("3			Passed Telem PEND: 						\n");
		System_flush();

		ms_delay( 10 );

		switch(signal_telem_struct.id){

			//**************************
			// Get Robot Arm Telem
			//**************************

			//roveCom::	enum robot_arm::	id = 102

			case robot_arm:

				//mux to the device, pause a millisecond, send telem request, pause a millisecond, then read the uart

				mux_1( 9 );

				ms_delay( 1 );

				send_struct(uart1, &test_device_data_struct, test);

				ms_delay( 1 );

				test_telem_is_valid = recv_struct(uart1, &test_device_data_struct, test);

				if(!test_telem_is_valid){

					System_printf("test_telem_is_valid is invalid!");
					System_flush();

				}//endif:		(test_telem_is_valid)

				//the following call copy buffers the packet for roveTCPHandler Thread, then implicitly task_sleeps roveTelemCntrl Task

				//finally this call will implicitly awaken the roveTCPHandler Thread to handle the Mailbox.Semaphore

				//This is a RoverMotherboard.cfg object::		toBaseStationMailbox::		 1024, max msg =10

				Mailbox_post(fromTelemCntrlMailbox, &test_device_data_struct, 600);

				ms_delay( 10 );

				System_printf("3			Passed Telem POST: 						\n");
				System_flush();

				ms_delay( 10 );

		}//endswitch:		(signal_telem_struct.id)

	}//endwhile:	(1)

	//postcondition: execution will not reach this state unless a serious error occurs

	System_printf("Rove Telem Cntrl Task Error: Forced Exit\n");
	System_flush();

	//exit Task

	Task_exit();
*/
}//endfnctn:		roveTelemContoller() Task Thread
