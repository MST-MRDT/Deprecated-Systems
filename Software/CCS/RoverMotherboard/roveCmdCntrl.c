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
//
//03_08_2015 Connor Walsh cwd8d@mst.edu
#include "roveIncludes/roveWareHeaders/roveCmdCntrl.h"

Void roveCmdCntrl(UArg arg0, UArg arg1)
{

	//init and clean RoveCom msg recieve struct
	base_station_msg_struct fromBaseMsg;
	char commandBuffer[MAX_COMMAND_SIZE + 4];
	int messageSize;
	int speed = 0;

	fromBaseMsg.id = onenull_device;
	memset(&fromBaseMsg.value, 1, sizeof(MAX_COMMAND_SIZE) );

	System_printf("roveCmdCntrlr		init! \n");
	System_flush();

	while (1)
	{
		Mailbox_pend(fromBaseStationMailbox, &fromBaseMsg, BIOS_WAIT_FOREVER);

		System_printf("2:	 Cmd Cntrl Just RECIEVED PENDED MAIL! ID: %d \n", fromBaseMsg.id);
		System_flush();

		switch(fromBaseMsg.id)
		{
			case motor_left:
				// TODO implement correct Jack for Motor Comm Board

				speed = ((struct motor_control_struct*)(&fromBaseMsg))->speed;

				messageSize = generateMotorCommand(speed, commandBuffer);
				deviceWrite(ONBOARD_ROVECOMM, commandBuffer, (messageSize-1));

				System_printf("commandBuffer holds %s \n", commandBuffer);
				System_flush();

				System_printf("messageSize holds %d \n", messageSize);
				System_flush();

				System_printf("speed holds %d \n", speed);
				System_flush();

			break;

			case motor_right:

				speed = ((struct motor_control_struct*)(&fromBaseMsg))->speed;

				messageSize = generateMotorCommand(speed, commandBuffer);
				deviceWrite(ONBOARD_ROVECOMM, commandBuffer, (messageSize-1));

				System_printf("commandBuffer holds %s \n", commandBuffer);
				System_flush();

				System_printf("messageSize holds %d \n", messageSize);
				System_flush();

				System_printf("speed holds %d \n", speed);
				System_flush();

			break;

			default: // might want to change this to fallthrough cases and save default for error case

				System_printf("\nDefault case reached in CmdCnt\n");
				System_flush();
				// adds the start bytes, size byte, and checksum based on what struct id
				messageSize = buildSerialStructMessage((void *)&fromBaseMsg, commandBuffer);
				System_printf("Message Size: %d\n", messageSize);
				System_flush();

				int gripperJack = 1; // getDeviceJack(fromBaseMsg.id);
				deviceWrite(gripperJack, commandBuffer, messageSize);

			break;

		}//endswitch::		(fromBaseMsg.id)

	}//endwhile:		(1)
	//postcondition: execution will not reach this state unless a serious error occurs

	System_printf("Rove Cmd Cntrl Task Error: Forced Exit\n");
	System_flush();

	//exit Task

	Task_exit();
}//endfnct:		roveCmdCntrl() Task Thread
