// Missouri Science and Technology Mars Rover Design Team 2015
//
// roveDevTemplateThread.c
//
// Using Texas Instruments Code Composer Studio RTOS stack
//
// first created:
//
// 09_01_2015       V1 - URC Horizon IP TCP Client / UART/ PWM Controller Template
//
// Judah Schad jrs6w7@mst.edu
//
// get global handles
// initializes Texas Instruments drivers
// configs hardware interface
// begins the scheduler
//
// Texas Instruments:
//
// SYS/BIOS Kernel
// RTOS operating system
// TIVA RTSC config
//
// instatiates the roveDevTemplate.c as the C interface for a TexInst TIVA TASK Thread
//
// This is found in the tivaRtscJS.cfg Javascript Gui
//
// mrdt::roveWare

#ifndef ROVEDEVICETEMPLATETHREAD_H_
#define ROVEDEVICETEMPLATETHREAD_H_

#include "roveWare/roveTCPSocket.h"

#include "roveWare/roveWare_tivaWrappers.h"

//Handle to a TivaWare RTOS Private Stack -> See tivaRtscJS.cfg
void roveDeviceTemplateThread(UArg arg0, UArg arg1);

#endif // ROVEDEVICETEMPLATETHREAD_H_
