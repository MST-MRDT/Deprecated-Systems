//	TODO: Port To Fresh Build (using TI example:			This version educational practice not for distro)
//
// roveCmdCtrl.c
//
// first created:
//
// 01_22_2015_Owen_Chiaventone
//
// last edited:
//
//02_24_2015_Judah Schad_jrs6w7@mst.edu
//
// 	this implements a single function BIOS thread that acts as the RoverMotherboard.cfg roveCmdCtrlTask handle
//
//	recieves commands from roveTCPHandler in roveCom protocol using TI.Mailbox.from object and
//
//	sends requests to roveTelemCntrl for device telemetry in roveCom protocol using using TI.Mailbox.to object

#include "roveIncludes/roveCmdCntrl.h"

Void roveCmdCntrl(UArg arg0, UArg arg1){

	//external ref the scope for global uart handles

	extern UART_Handle uart0;
	extern UART_Handle uart1;
	extern UART_Handle uart2;
	extern UART_Handle uart3;
	extern UART_Handle uart4;
	extern UART_Handle uart5;
	extern UART_Handle uart6;
	extern UART_Handle uart7;

	//init and clean RoveCom msg recieve struct

	base_station_msg_struct fromBaseMsg;

	fromBaseMsg.id = onenull_device;

	memset(&fromBaseMsg.value, 1, sizeof(MAX_COMMAND_SIZE) );

	//init and clean RoveCom signal send struct

	signal_telem_control_struct signal_telem_struct;

	signal_telem_struct.id = onenull_device;

	signal_telem_struct.sig = null_signal;

	//init and clea RoveCom uart send struct

	struct motor_control_struct motor_control_struct;

	motor_control_struct.value = 0;

    //Task loops for ever

    //It sleeps on full Mailbox_post to roveTelemController Task

    //It awakes on full Mailbox_pend frome roveTelem Task

    //It only exits on error

    ms_delay( 10 );

	System_printf("roveCmdCntrlr		init \n");
	System_flush();

	ms_delay( 1 );

	//Mailbox_post(signalTelemMailbox, &signal_telem_struct, 3600);

	while(1){

				//read cmd from roveTCPHandler
				//The following call also opens implicitly task_sleeping, roveCmdCntrlTask
				//BIOS will next reawake roveCmdCntrlTask here, when roveTCPHandler Thread posts telem on this Mail.Semaphore.Pend
				//This is a RoverMotherboard.cfg object::		fromBaseMsg::		1024, max msg = 10

				Mailbox_pend(fromBaseStationMailbox, &fromBaseMsg, BIOS_WAIT_FOREVER);

				ms_delay( 10 );

				System_printf("2			Just CMD PENDED MAIL!: %d \n", fromBaseMsg.value);
				System_flush();

				ms_delay( 10 );

				switch(fromBaseMsg.id){

					//*************
					// Drive Left
					//*************

					//roveCom::	enum motor_left::	id = 100

					case motor_left:

						//TODO

						//memset(&motor_control_struct.value, &fromBaseMsg.value, sizeof(struct motor_control_struct) );

						//motor_control_struct.value = fromBaseMsg.value;

						mux_1( 8 );
						mux_2( 7 );
						mux_3( 6 );

						send_struct(uart1, &motor_control_struct, motor_controller);
						send_struct(uart2, &motor_control_struct, motor_controller);
						send_struct(uart3, &motor_control_struct, motor_controller);

//TODO

						//signal_telem_struct.id = test_device;
						//signal_telem_struct.sig = null_signal;

					break;

					//*************
					// Drive Right
					//*************

					//roveCom::	enum motor_right::	id = 101

					case motor_right:

						//memset(&motor_control_struct.value, &fromBaseMsg.value, sizeof(struct motor_control_struct) );

						mux_1( 1 );
						mux_2( 2 );
						mux_3( 3 );

						send_struct(uart1, &motor_control_struct, motor_controller);
						send_struct(uart2, &motor_control_struct, motor_controller);
						send_struct(uart3, &motor_control_struct, motor_controller);

//TODO

						//signal_telem_struct.id = test_device;
						//signal_telem_struct.sig = null_signal;

					break;

				}//endswitch::		(fromBaseMsg.id)

				//call Telemtery Thread

				//the following call copy buffers the packet for roveTelemCntrlTask Thread, then implicitly task_sleeps roveCmdCntrlTask

				//finally this call will implicitly awaken the roveTelemCntrlTask Thread to handle the Mailbox.Semaphore

				//This is a RoverMotherboard.cfg object::		signalTelemMailbox		::		 1024, max msg =10

				//Mailbox_post(signalTelemMailbox, &signal_telem_struct, 600);

				//ms_delay( 10 );

				//System_printf("2			Passed Cmd POST: 						\n");
				//System_flush();

				//ms_delay( 10 );

	}//endwhile:		(1)

	//postcondition: execution will not reach this state unless a serious error occurs

	System_printf("Rove Cmd Cntrl Task Error: Forced Exit\n");
	System_flush();

	//exit Task

	Task_exit();

}//endfnct:		roveCmdCntrl() Task Thread
