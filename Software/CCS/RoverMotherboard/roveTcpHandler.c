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

//this implements a single function BIOS thread that acts as the RoverMotherboard.cfg roveTcpHandlerTask handle
//
//recieves base station commands and send device telemetry using tcp ip bsd sockets

#include "roveIncludes/roveTcpHandler.h"

//BIOS_start inits this as the roveTcpHandlerTask Thread

//this is a RoverMotherboard.cfg object::		roveTcpHandlerTask		::		priority 1, vital_flag = t, 2048 persistent private stack

Void roveTcpHandler(UArg arg0, UArg arg1){

	//init socket file environment

	fdOpenSession((void*)TaskSelf());

	//init tcp socket handle

    int              clientfd = 0;

    //TODO wait, what? should this be called local address or client address (We don't need both now do we?)

    struct 			 sockaddr_in localAddr;
    struct 			 timeval timeout;

    //init flags for socket status handles

	int              bytesSent = 0;
	int			     bytesReceived =0;
	int              connect_success = 0;
	int              connectedFlag = NOT_CONNECTED;

    //init RoveNet recieve struct

    base_station_msg_struct fromBaseCmd;

    //init RoveNet send struct

    base_station_msg_struct toBaseTelem;

	//the task loops for ever

	//it sleeps on the Mailbox_post to roveCommandController Task

	//it awakes on full Mailbox_pend from roveTelemController Task

	//it only exits from BIOS_start, on error state

    while(1){

    	//init socket, if the socket fails any point we break, close(clientfd), and reloop to re-init a fresh clientfd

       	clientfd = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);

       	//flag for bad socket

		if(clientfd < 0){

			System_printf("Failed Socket() create (src = socket()) (%d)\n",fdError() );
			System_flush();

    	}//endif:	(clientfd == INVALID_SOCKET)

		//init bsd socket config struct

		memset(&localAddr, 0, sizeof(localAddr) );

		//config the socket

		localAddr.sin_family = AF_INET;
		localAddr.sin_port = htons(TCPPORT);

		inet_pton(AF_INET, RED_IP, &localAddr.sin_addr);

		timeout.tv_sec = 3600;
		timeout.tv_usec = 0;

		setsockopt(clientfd, SOL_SOCKET, SO_SNDTIMEO, &timeout, sizeof(timeout) );
		setsockopt(clientfd, SOL_SOCKET, SO_RCVTIMEO, &timeout, sizeof(timeout) );

		//connect the socket

		connect_success = connect(clientfd, (PSA)&localAddr, sizeof(localAddr) );

		//flag for failed connection

    	if(connect_success < 0){

    		connectedFlag = NOT_CONNECTED;

    		System_printf("Error: socket Accept() failed (src = connect())\n");
    		System_flush();

    	}else{

    		//we are now connected

    		connectedFlag = CONNECTED;

    	}//endifelse:	(connect_success < 0)

    	//loop to recieve cmds and send telem from and to the base station: if socket breaks, loop breaks and we attempt to reconnect

    	while(connectedFlag == CONNECTED){

    		//clean the structs for Mailbox_post:		.id is enum 	.value is char[MAX_COMMAND_SIZE]

    		fromBaseCmd.id = null_device;

    		memset(&fromBaseCmd.value, 0, sizeof(MAX_COMMAND_SIZE) );

    		//clean the structs for Mailbox_pend:		.id is enum 	.value is char[MAX_TELEM_SIZE]

    		toBaseTelem.id = null_device;

    		memset(&toBaseTelem.value, 0, sizeof(MAX_COMMAND_SIZE) );

    		//get the tcp packet and store it in the RoveNet fromBaseCmd struct

    		//order is device dependent: Tiva C is little-endian, so this reads indexed to the lsb of fromBaseCmd.id field

    		bytesReceived = recv(clientfd, &fromBaseCmd, sizeof(struct base_station_msg_struct), 0);

    		//flag for lost connection when recieving

    		if(bytesReceived < 0){

    			connectedFlag = NOT_CONNECTED;

    			System_printf("Connection lost. (src = recv)\n");
    			System_flush();

    		}else{

    			//we have recieved successfully

    			//the following call copy buffers the packet for roveCmdCntrl Thread, then implicitly task_sleeps roveTcpHandlerTask

    			//finally this call will implicitly awaken the roveCmdCntrlTask Thread to handle the Mailbox.Semaphore

    			//This is a RoverMotherboard.cfg object::		fromBaseStationMailbox		::		 1024, max msg =10

				 Mailbox_post(fromBaseStationMailbox, &fromBaseCmd, BIOS_WAIT_FOREVER);

    		}//endifelse:		(bytesReceived < 0)

    		//The following call also opens implicitly task_sleeping, roveTcpHandlerTask

    		//BIOS will next reawake roveTcpHandlerTask here, when roveTelemCntrl Thread posts telem on this Mail.Semaphore.Pend

    		//This is a RoverMotherboard.cfg object::		fromTelemMailbox::		1024, max msg = 10

    		//timeout of 600 is 1/4 the  maxTimeout cycle which is the reference we set for ndk::		timeout.tv_sec = 3600 in roveTCPHandler

			Mailbox_pend(fromTelemCntrlMailbox, &toBaseTelem, 600);

			//we have now recieved a device telemetry packet from the roveTelemCntrl Thread

			switch(toBaseTelem.id){

		    	//the robot arm is the one sending us telemetry

		    	case test_device:

		    		//get the tcp packet and store it in the RoveNet fromBaseCmd struct

		    		//order is device dependent: Tiva C is little-endian, so this reads indexed to the lsb of fromBaseCmd.id field

		    		bytesSent = send(clientfd,  &toBaseTelem,  sizeof(struct test_device_data_struct), 0);

		    	break;

	    	}//endswitch:	(fromBaseCmd.id)

		    //flag for lost connection when sending

		    if(bytesSent < 0){

				connectedFlag = NOT_CONNECTED;

				System_printf("Connection lost. (src = sent()\n");
				System_flush();

		    }//endif:		(bytesSent < 0)

    	} //endwhile(connectedFlag == CONNECTED)

    	//If execution reaches this point, then the connection has broken and we will attempt a new socket

    	close(clientfd);

    }//endwhile:	(1)


    //postcondition: execution will not reach this state unless a serious error occurs

    //close the socket file environment

    fdCloseSession((void*)TaskSelf());

    System_printf("Tcp Handler Task Error: Forced Exit\n");
    System_flush();

    //exit Task

    Task_exit();

}//endfnctn:: 	roveTcpHandler() Task Thread
