//	TODO: Port To Fresh Build (using TI example:			This version educational practice not for distro)

// mrdtRoveWare.h
//
// first created:
//
// 02_24_2015_Judah Schad_jrs6w7@mst.edu
//
// last edited:
//
// 04_07_2015_Judah Schad_jrs6w7@mst.edu

#pragma once

#ifndef MRDTROVEWARE_H_
#define MRDTROVEWARE_H_

// Network Parameters

// tcp ip socket flags

#define NOT_CONNECTED -1
#define CONNECTED 1

// sending timeout in seconds

#define NETWORK_TIMEOUT 6

// hardcodes the IP of the base station
#define RED_IP "192.168.1.2"

// hardcodes the TCP port

#define TCPPORT 11000

// TCPHandler switch handles

#define CONSOLE_COMMAND		0x00
#define SYNCHRONIZE_STATUS	0x01
#define COMMAND_METADATA	0x02
#define TELEM_METADATA		0x03
#define ERROR_METADATA		0x04
#define ROVER_COMMAND		0x05
#define ROVER_TELEM			0x06
#define ROVER_ERROR			0x07
#define JSON_START_BYTE 	'{'

// hardware

#define OUTPUT 1
#define INPUT 0
#define HIGH 1
#define LOW 0

// size in bytes of longest command that can be recieved from the base station

#define MAX_COMMAND_SIZE 30
#define MAX_TELEM_SIZE 30

// device id

#define	onenull_device_id 111
#define	test_device_id 99
#define	motor_left_id 100
#define	motor_right_id 101
#define	robot_arm_id 201
#define	gripper_id 202
#define	drill_id 203

// robot arm values

#define wrist_counter_clock_wise 0
#define wrist_clock_wise 1
#define wrist_down 2
#define wrist_up 3
#define elbow_counter_clock_wise 4
#define elbow_clock_wise 5
#define elbow_down 6
#define elbow_up 7
#define actuator_reverse 8
#define actuator_forward 9
#define base_counter_clock_wise 10
#define base_clock_wise 11
#define reset_arm 12

//struct id

/*#define blank_id_zero 0
#define	mobo_identify_req 1
#define	dev_identify_reply 2
#define	mobo_begin_op_req 3
#define	dev_begin_op_reply 4
#define	mobo_telem_req 5
#define	dev_command_reply 6
#define	blank_id_seven 7
#define	mobo_robo_arm_command 8
#define	mobo_gripper_command 9
#define	mobo_drill_command 10
*/

// Custom Drivers

//MRDesign Team:: 	roveWare::		roveCom cmnd || telem :: data structures

#include "roveWareHeaders/roveStructs.h"

//MRDesign Team:: 	roveWare::		roveCom uart :: constructs and instatiates uarts

#include "roveWareHeaders/roveUarts.h"

//MRDesign Team:: 	roveWare::		roveCom timing :: encapsulate system delay

#include "roveWareHeaders/roveTiming.h"

//MRDesign Team:: 	roveWare::		roveCom transfer :: creates message protocol for easyTransfer

#include "roveWareHeaders/roveStructTransfer.h"

//MRDesign Team:: 	roveWare::		roveCom pinMap :: contains the mappings for shield pin outs to mob jacks

#include "roveWareHeaders/rovePinMap.h"

//MRDesign Team:: 	roveWare::		roveCom pinMap :: contains the wrappers for the TI hardware resources

#include "roveWareHeaders/roveHardwareAbstraction.h"

//MRDesign Team:: 	roveWare::		roveNet convert json to and from roveCom formatting

//#include "json.h"

//DON'T INCLUDE SYS BIOS THREADS in ROVEWARE:

//MRDesign Team:: 	roveWare::		roveNet tcp ip bsd socket BIOS thread service

//#include "roveTcpHandler.h"

//MRDesign Team::roveWare::		    roveCom command and control BIOS thread service

//#include "roveCmdCntrl.h"

//MRDesign Team::roveWare::		    roveCom command and control BIOS thread service

//#include "roveTelemCntrl.h"

//MRDesign Team::roveWare::		    roveCom hardware tester BIOS thread service

//#include "roveHardwareTester.h"

//MRDesign Team::roveWare::		    roveCom structTransfer Tester BIOS thread service

//#include "roveComTest.h"

//MRDesign Team::roveWare::		    roveCom ASCII string MC Tester BIOS thread service

//#include "rovMotorControlTester.h"

#endif // MRDTROVEWARE_H_
