//	TODO: Port To Fresh Build (using TI example:			This version educational practice not for distro)
//
// roveMuxes.h
//
// first created:
//
// 04_20_2014_Keenan_Johnson
//
// last edited:
//
//02_25_2015_Judah Schad_jrs6w7@mst.edu

//MRDesign Team:: 	roveWare::		muxing functions to write S0, S1 for multiplexer devices

#pragma once

#ifndef ROVEMUXES_H_
#define ROVEMUXES_H_

//globally scoped Texas Instruments (TI) header files

#include "../RoverMotherboardMain.h"

//MRDesign Team::roveWare::		roveCom and RoveNet services headers

//#include "mrdtRoveWare.h"

// Function to change mux 1 to

// RS-485 transceivers below

// 1, 8, ,9

// EK_TM4C1294XL_PH0 : U3_MUX_S0
// EK_TM4C1294XL_PH1 : U3_MUX_S1

void mux_1(int rs_485_transceiver);

// Function to change mux 2 to

// RS-485 transceivers below

// 2, 7, 10

// EK_TM4C1294XL_PM6 : U4_MUX_S0
// EK_TM4C1294XL_PM7 : U4_MUX_S1

void mux_2(int rs_485_transceiver);

// Function to change mux 3 to

// RS-485 transceivers below

// 3, 6, 11

// EK_TM4C1294XL_PL0 : U5_MUX_S0
// EK_TM4C1294XL_PL1 : U5_MUX_S1

void mux_3(int rs_485_transceiver);

#endif // ROVEMUXES_H_
