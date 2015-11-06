// roveWare_StructId_Protocol.h MST MRDT 2015
//
// Judah Schad jrs6w7@mst.edu
//
// Horizon struct_id based protocol definitions
//
// mrdt::rovWare

#ifndef ROVEWARE_STRUCTID_PROTOCOL_H_
#define ROVEWARE_STRUCTID_PROTOCOL_H_

//MRDT shorthand
#define FOREVER 1

//These struct_id and payload definitions are how messages get version coupled to Base Station

//HORIZON command CONFIG protocol
#define motor_drive_right_id 100
#define motor_drive_left_id 101

#define test_command_id 206
#define test_device_id 251

//hardware parameters
#define TEST_DEVICE_PIN 0

#endif // ROVEWARE_STRUCTID_PROTOCOL_H_
