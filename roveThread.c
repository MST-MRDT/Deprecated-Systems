// Missouri Science and Technology Mars Rover Design Team 2015_2016
// jrs6w7@mst.edu
//
// C interface for a TexInst TIVA RTOS TASK Thread with private stack / signal
// Using Texas Instruments Code Composer Studio RTOS stack instatiates the roveDevice_Thread.c
// This is found in the tivaRtscJS.cfg[TI-RTOS] Javascript Gui/Script tab at the bottom of Projece Explorer Folders
// recieves base station messages using ip bsd style sockets and issues logic commands to hardware
//
// mrdt::rovWare
#include "roveThread.h"

//TEST WHEEL mode
    //////////speed schema -> rpm
            //range: 0~2047( 0X7FF)
            //unit:  0.1%.
            //speed = 0 Full Reverse
            //speed = 1023 = 1024 Full Stop
            //speed = 1025~2047 Full forward
            //i.e. speed = 512 means 50% of max motor output in reverse
    //angle schema = undefined -> has no affect

//TEST JOINT mode
    //////////speed schema-> rpm
            //range:  0~1023 (0X3FF)
            //unit:   0.111rpm
            //speed =  0 = 1024 is max rpm of the motor (114rpm)
            //speed =  1~1023 (up to 114rpm)
            //ie: speed = 300 is about 33.3 rpm
    //angle schema -> 10 bit absolute joint position (Goal Position): dead band at 300-360 degrees
            //range:   0~1023 (0x3FF)
            //unit:    0.29 degree
            //ie: angle = 1024 is 300 degree

//Judah Dev16 Shorthand
#define LOCAL_DEVICE_IP_ADDRESS "192.168.1.2"

#define LEFT_WRIST_ID 0x00
#define RIGHT_WRIST_ID 0x00

#define DYNA_WRITE_ONLY = 0

roveUart_Handle FAKE_UART;
roveGpio_Handle* FAKE_GPIO;



///////////////BEGIN 2016//////DEVICE THREAD//////////////
void roveThread(UArg arg0, UArg arg1) {

    printf("Init roveThread Arm Dyna Tester\n\n\n");

///////////////BEGIN 2016//////NETWORKING///////////////////

    //open a tiva ndk socket session in this task stack
    fdOpenSession( TaskSelf() );

/////////////////TODO:
    rove_udp_socket RoveCommDec16;
    //TODO args :: init roveComm
    roveComm_Init(&RoveCommDec16);
    //TODO base_station.local_ip_addr.port.subscribers[ip_addrs++] = rovecommInit(LOCAL_IP_ADDRESS, PORT, &base_station, state);

///////////////BEGIN 2016//////Dynamixel Serial//////////////

    rove_dyna_serial LeftWrist;
    LeftWrist.error_flag = roveDynamixel_Init(&LeftWrist, LEFT_WRIST_ID, FAKE_UART, FAKE_GPIO, DYNA_WRITE_ONLY);

    if(LeftWrist.error_flag){
        printf("Dev16 Error roveDynamixel_Init LeftWrist!");
    }//end if

    rove_dyna_serial RightWrist;
    RightWrist.error_flag = roveDynamixel_Init(&RightWrist, RIGHT_WRIST_ID, FAKE_UART, FAKE_GPIO, DYNA_WRITE_ONLY);

    if(RightWrist.error_flag){
        printf("Dev16 Error roveDynamixel_Init RightWrist!");
    }//end if

    int16_t speed = 0;
    int16_t angle = 0;
    rove_protocol RoveControlDec16;

///////////////BEGIN 2016//////MOTOR TEST ROUTINE/////////////
    while (FOREVER) {

//TODO Base Station define Data Id's Cmd Proto Integration
        if( roveGet_UdpMsg(&RoveControlDec16, &RoveCommDec16) < COMMS_SINGLE_BYTE ) {
            printf("ZERO bytes from getUdpMsg\n");
        }//end if

//TEST WHEEL mode
        if( roveDynamixel_SetWheelModeCFG(&LeftWrist)) {
            printf("Dev16 Error roveDynamixel_SetWheelModeCFG left_wrist!");
        }//endif

        if(roveDynamixel_SetWheelModeCFG(&RightWrist)) {
            printf("Dev16 Error roveDynamixel_SetWheelModeCFG left_wrist!");
        }//endif

        //roveDynamixel_SpinWheelCMD::->if(spin_wheel_direction > 0) wheel_speed += (1 >> 10);
        //ramp up from zero to max forward
        for (speed = 0; speed < 1000; speed += 50) {

            //TODO arg2 could be negative??
            if(roveDynamixel_SpinWheelCMD(&LeftWrist, speed)){
                printf("Dev16 Error roveDynamixel_SpinWheelCMD left_wrist!");
            }//endif

            if(roveDynamixel_SpinWheelCMD(&RightWrist, speed)){
                printf("Dev16 Error roveDynamixel_SpinWheelCMD right_wrist!");
            }//endif

            roveDelay_MilliSec(500);
        } //end for

        //ramp back from max forward through zero to max reverse
        for (speed = 1000; speed > -1000; speed -= 50) {

            if(roveDynamixel_SpinWheelCMD(&LeftWrist, speed)){
                printf("Dev16 Error roveDynamixel_SpinWheelCMD left_wrist!");
            }//endif

            if(roveDynamixel_SpinWheelCMD(&RightWrist, speed)){
                printf("Dev16 Error roveDynamixel_SpinWheelCMD right_wrist!");
            }//endif

            roveDelay_MilliSec(500);
        } //end for

        //ramp back from max reverse landing on zero
        for (speed = -1000; speed < 0; speed += 50) {

            if(roveDynamixel_SpinWheelCMD(&LeftWrist, speed)){
                printf("Dev16 Error roveDynamixel_SpinWheelCMD left_wrist!");
            }//endif

            if(roveDynamixel_SpinWheelCMD(&RightWrist, speed)){
                printf("Dev16 Error roveDynamixel_SpinWheelCMD right_wrist!");
            }//endif

            roveDelay_MilliSec(500);
        } //end for
//TODO:  #define and scale speed < 1000; speed += 50
//::END TEST WHEEL mode
        roveDelay_MilliSec(20000);

//TEST JOINT mode
        if( roveDynamixel_SetJointModeCFG(&LeftWrist)) {
            printf("Dev16 Error roveDynamixel_SetJointModeCFG left_wrist!");
        }//endif

        if(roveDynamixel_SetJointModeCFG(&RightWrist)) {
            printf("Dev16 Error roveDynamixel_SetJointModeCFG left_wrist!");
        }//endif
        //very slowly now
        speed = 10;
        for (angle = 0; angle < 1000; angle += 50) {

            //TODO arg2 could be negative??
            if(roveDynamixel_RotateJointCMD(&LeftWrist, angle, speed)){
                printf("Dev16 Error roveDynamixel_SpinWheelCMD left_wrist!");
            }//endif

            if(roveDynamixel_RotateJointCMD(&RightWrist, angle, speed)){
                printf("Dev16 Error roveDynamixel_SpinWheelCMD right_wrist!");
            }//endif

            roveDelay_MilliSec(500);
        } //end for

        for (angle = 1000; angle > 0; speed -= 50) {

            if(roveDynamixel_RotateJointCMD(&LeftWrist, angle, speed)){
                printf("Dev16 Error roveDynamixel_SpinWheelCMD left_wrist!");
            }//endif

            if(roveDynamixel_RotateJointCMD(&RightWrist, angle, speed)){
                printf("Dev16 Error roveDynamixel_SpinWheelCMD right_wrist!");
            }//endif

            roveDelay_MilliSec(500);
        } //end for

        for (speed = 0; speed < 500; speed += 50) {

            if(roveDynamixel_RotateJointCMD(&LeftWrist, angle, speed)){
                printf("Dev16 Error roveDynamixel_SpinWheelCMD left_wrist!");
            }//endif

            if(roveDynamixel_RotateJointCMD(&RightWrist, angle, speed)){
                printf("Dev16 Error roveDynamixel_SpinWheelCMD right_wrist!");
            }//endif

            roveDelay_MilliSec(500);
        } //end for
//END TEST JOINT mode

        roveDelay_MilliSec(20000);
//::END2016 MOTOR TEST ROUTINE

//////////////REPEAT 2016//////MOTOR TEST FOREVER/////////////
    }//endwhile FOREVER

}//endfnctnTask
//::END THREAD
