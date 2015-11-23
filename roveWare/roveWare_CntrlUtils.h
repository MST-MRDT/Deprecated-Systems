// Missouri Science and Technology Mars Rover Design Team 2015_2016
//
// roveWare_CntrlUtils.h
//
// jrs6w7@mst.edu
//
// Control Utilities for URC 2016
//
//:://::mrdt//:://::rovWare
#ifndef ROVEWARE_CNTRLUTILS_H_
#define ROVEWARE_CNTRLUTILS_H_

//C lib
#include <stdint.h>

//mrdt definitions
#include "roveWare_HwWrappersTiva129.h"

///////////////////////////////////////////////////////->::Begin 2015 Deployed
//std rcservo: fullforward:2000uS/ fullstop:1500uS/ fullreverse:1000uS/
void roveDriveMotor_ByPwmCMD(PWM_Handle motor, int16_t speed);
//:://::End 2015 Deployed

///////////////////////////////////////////////////////->::Begin 2016 Developing
//TODO->::remove 'spin_wheel_direction' arg1??
//TODO->::arg2 could be negative and eliminate roveDynamixel_ConvertSpeed, roveDynamixel_ReverseSpeed??
void roveDynamixel_SetWheelModeCFG(uint8_t dynamixel_id);
void roveDynamixel_SpinWheelCMD(uint8_t dynamixel_id, uint8_t spin_wheel_direction, uint16_t wheel_speed);

//TODO->::Joint Mode : set to "AngleLimit" to anything other than zero??:
void roveDynamixel_SetJointModeCFG(uint8_t dynamixel_id);
void roveDynamixel_RotateJointCMD(uint8_t dynamixel_id, uint16_t joint_position, uint16_t joint_speed);

//Handle Dyna Serial Comms
void roveDynamixel_WriteByteMSG(uint8_t dynamixel_id, uint8_t tx_data_byte);
uint32_t roveDynamixel_WritePacketMSG(uint8_t dynamixel_id, uint8_t* data_buffer, uint16_t data_byte_count);

uint8_t roveDynamixel_ReadByteMSG(uint8_t dynamixel_id);
uint32_t roveDynamixel_ReadPacketMSG(uint8_t dynamixel_id);
uint32_t roveDynamixel_ParseReplyMSG(uint8_t* data_buffer);

void roveDynamixel_HandleErrorMSG(uint8_t dynamixel_id, uint8_t* data_buffer);
//::End MSG Handling

//////////////////////////////////////////Begin telem REQUEST Handling
uint32_t roveDynamixel_ReadSpeedREQ(uint8_t dynamixel_id);
uint32_t roveDynamixel_ReadAngleREQ(uint8_t dynamixel_id);

//mrdt Shorthand
#define TX_HIGH             0x01
#define RX_LOW              0x00

#define NO_PACKET           0
#define PACKET              1
#define SINGLE_BYTE         1

#define NO_ERRORS           1
#define ERROR               -1

#define CLOCKWISE           1
#define COUNTERCLOCKWISE    0

#define ZERO_SPEED          0

//////////////////TODO TEST
#define NO_INSTRUCTION   0x00
#define TEST_INSTRUCTION 0x01
#define TEST_ERROR       0x02

//////////////////TODO MOVE to roveWare_protocol
#define LEFT_WRIST                          0x00
#define RIGHT_WRIST                         0x01

////Dynamixel Protocol
#define DYNAMIXEL_TX_DELAY_MICRO_SEC        100
#define DYNAMIXEL_PACKET_START_BYTE         255

//Dynamixel Commands
#define WRITE_AX12_CMD                      3
#define WRITE_TARGET_POSITN_AX12_CMD        30
#define WRITE_TARGET_SPEED_AX12_CMD         32

//Dynamixel Telemetry Requests
#define READ_TELEM_AX12_REQ                 2

#define READ_ONE_BYTE_AX12_REQ              1
#define READ_TWO_BYTES_AX12_REQ             2

#define MAX_BYTES_AX12_REPLY                20
#define MAX_READ_AX12_ATTEMPT_COUNT         10

#define READ_PRESENT_POSITION_AX12_REQ      36
#define READ_PRESENT_SPEED_AX12_REQ         38
#define READ_PRESENT_VOLTAGE_AX12_REQ       42
#define READ_PRESENT_CURRENT_AX12_REQ       68
#define READ_PRESENT_TEMPERATURE_AX12_REQ   43
#define READ_PRESENT_LOAD_AX12_REQ          40

//Dynamixel Run Time Config
#define SET_MODE_AX12_CFG                   8
#define SET_TORQUE_ENABLE_AX12_CFG          24
#define SET_TORQUE_LIMIT_AX12_CFG           34

//TODO??
//#define AX12_ROTATE_AT_TORQUE             71
//#define AX12_ROTATE_AT_ACCELERATION       73
//::End 2016 Developing

//////////////////////////////////////////TODO->::EEPROM AREA

/*//////////////////////////////////////////////////////////
#define AX_MODEL_NUMBER_L           0
#define AX_MODEL_NUMBER_H           1
#define AX_VERSION                  2
#define AX_ID                       3
#define AX_BAUD_RATE                4
#define AX_RETURN_DELAY_TIME        5
#define AX_CW_ANGLE_LIMIT_L         6
#define AX_CW_ANGLE_LIMIT_H         7
#define AX_CCW_ANGLE_LIMIT_L        8
#define AX_CCW_ANGLE_LIMIT_H        9
#define AX_SYSTEM_DATA2             10
#define AX_LIMIT_TEMPERATURE        11
#define AX_DOWN_LIMIT_VOLTAGE       12
#define AX_UP_LIMIT_VOLTAGE         13
#define AX_MAX_TORQUE_L             14
#define AX_MAX_TORQUE_H             15
#define AX_RETURN_LEVEL             16
#define AX_ALARM_LED                17
#define AX_ALARM_SHUTDOWN           18
#define AX_OPERATING_MODE           19
#define AX_DOWN_CALIBRATION_L       20
#define AX_DOWN_CALIBRATION_H       21
#define AX_UP_CALIBRATION_L         22
#define AX_UP_CALIBRATION_H         23

// RAM AREA  //////////////////////////////////////////////////////////////
#define AX_TORQUE_ENABLE            24
#define AX_LED                      25
#define AX_CW_COMPLIANCE_MARGIN     26
#define AX_CCW_COMPLIANCE_MARGIN    27
#define AX_CW_COMPLIANCE_SLOPE      28
#define AX_CCW_COMPLIANCE_SLOPE     29
#define AX_GOAL_POSITION_L          30
#define AX_GOAL_POSITION_H          31
#define AX_GOAL_SPEED_L             32
#define AX_GOAL_SPEED_H             33
#define AX_TORQUE_LIMIT_L           34
#define AX_TORQUE_LIMIT_H           35
#define AX_PRESENT_POSITION_L       36
#define AX_PRESENT_POSITION_H       37
#define AX_PRESENT_SPEED_L          38
#define AX_PRESENT_SPEED_H          39
#define AX_PRESENT_LOAD_L           40
#define AX_PRESENT_LOAD_H           41
#define AX_PRESENT_VOLTAGE          42
#define AX_PRESENT_TEMPERATURE      43
#define AX_REGISTERED_INSTRUCTION   44
#define AX_PAUSE_TIME               45
#define AX_MOVING                   46
#define AX_LOCK                     47
#define AX_PUNCH_L                  48
#define AX_PUNCH_H                  49

// Instruction Set ///////////////////////////////////////////////////////////////
#define AX_PING                     1
#define AX_READ_DATA                2
#define AX_WRITE_DATA               3
#define AX_REG_WRITE                4
#define AX_ACTION                   5
#define AX_RESET                    6
#define AX_SYNC_WRITE               131

// Specials ///////////////////////////////////////////////////////////////
#define AX_BYTE_READ_ONE            1
#define AX_BYTE_READ_TWO            2
#define BROADCAST_ID                254
#define AX_START_BYTE               255

#define AX_CCW_AL_L                 255
#define AX_CCW_AL_H                 3
#define LOCK                        1

#define TIME_OUT                    10         // This parameter depends on the speed of transmission
#define TX_DELAY_TIME               400        // This parameter depends on the speed of transmission - but can be changed to a higher speed.

#define Tx_MODE                     1
#define Rx_MODE                     0

typedef enum {
    AX_OFF = 0,
    AX_ON = 1
} dynamixel_errors;

typedef enum {
    AX_COUNTERCLOCKWISE = 0,
    AX_CLOCKWISE = 1
} DynamixelDirection;

typedef enum {
    AX_RETURN_NONE = 0,
    AX_RETURN_READ = 1,
    AX_RETURN_ALL = 2
} DynamixelStatusReturnLevel;

#include <inttypes.h>

unsigned char Direction_Pin;

//////////////////////////////////////////END->::EEPROM AREA




//TODO->::DEPRECATED 2016 Developement
#define ZERO_SPEED 0
#define ENDLESS_ROTATION 0
#define DYNAMIXEL_SPEED_MIN -1022
#define DYNAMIXEL_SPEED_MAX 1022
#define LIN_ACT_FORWARD 0xE1
#define LIN_ACT_REVERSE 0xE0


//command_byte : forward /reverse
typedef struct linear_actuator_struct {

    uint8_t command_byte;
    uint8_t speed;
}__attribute__((packed)) linear_actuator_struct, *linear_actuator_struct_ptr;


//positive is forward, negative is reverse, only 8 bit low_byte is speed
void rovePolulu_DriveLinAct(int tiva_pin, int16_t speed);

*/
#endif // ROVEWARE_CNTRLUTILS_H_
