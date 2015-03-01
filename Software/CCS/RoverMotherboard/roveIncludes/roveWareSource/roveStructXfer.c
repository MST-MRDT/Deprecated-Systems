//	TODO: Port To Fresh Build (using TI example:			This version educational practice not for distro)

// roveStructXfer.c
//
// first created:
//
// 04_20_2014_Keenan Johnson
//
// last edited:
//
//02_25_2015_Judah Schad_jrs6w7@mst.edu

#include "../roveWareHeaders/roveStructXfer.h"

//writes struct to uart buffer

void send_struct(UART_Handle uart, void* my_struct, enum peripheral_devices device){

    uint8_t size;
    uint8_t start_byte1 = 0x06;
    uint8_t start_byte2 = 0x85;

    switch(device){

        case motor_controller:

            size = sizeof(*((struct motor_control_struct*)my_struct));

        break;

        case robotic_arm:

        	size = sizeof(*((struct arm_control_struct*)my_struct));

        break;

        case gripper:

        	size = sizeof(*((struct gripper_control_struct*)my_struct));

        break;

        case drill:

        	size = sizeof(*((struct drill_Controls*)my_struct));

        break;

        case science_payload:

        	size =  sizeof(*((struct science_payload_control_struct*)my_struct));

        break;

        case lighting_board:

        	size =  sizeof(*((struct lighting_board_struct*)my_struct));

        break;

        case camera:

        	size =  sizeof(*((struct camera_control_struct*)my_struct));

		break;

        case test:
                	size =  sizeof(*((struct test_device_data_struct*)my_struct));

        break;

    }//endswitch:		(device)

    uint8_t* address = (uint8_t*) my_struct;
    uint8_t CS = size;

    UART_write(uart, (char*) &start_byte1, 1);
    UART_write(uart, (char*) &start_byte2, 1);
    UART_write(uart, (char*) &size, 1);

    int i;

    for(i = 0; i<size; i++){

        CS^=*(address+i);

        UART_write(uart, (char*) &(*(address+i)), 1);

    }//endfor:		(i = 0; i<size; i++)

    UART_write(uart, (char*) &CS, 1);

}//endfnct:		send_struct(UART_Handle uart, void* my_struct, enum peripheral_devices device)

//reads struct from uart buffer

bool recv_struct(UART_Handle uart, void* my_struct, enum peripheral_devices device){

	uint8_t start_byte1 = 0x06;
	uint8_t start_byte2 = 0x85;
	uint8_t size;

	//calculate checksum

	uint8_t calc_CS;

	int i;

	//get size of struct

	switch(device){

		case bms:

			size = sizeof(*((struct bms_data_struct*)my_struct));

		break;

		case tcp_cmd:

			size = sizeof(*((struct base_station_msg_struct*)my_struct));

		break;

		case drill:

			size = sizeof(*((struct drill_Telemetry*)my_struct));

		break;

		case gps:

			size = sizeof(*((struct gps_data_struct*)my_struct));

		break;

		case power_board:

			size = sizeof(*((struct power_board_telem*)my_struct));

		break;

		case test:

					size = sizeof(*((struct test_device_data_struct*)my_struct));

		break;

	}//endswitch:		(device)

	char rx_buffer[150];
	char temp;

	//check for Start byte 1

	do{

		UART_read(uart, &temp, 1);

	}while(temp != start_byte1);

	// Check for Start byte 2

	UART_read(uart, &temp, 1);

	if(temp != start_byte2){

		//kick out of function

		return false;

	}//endif:		(temp != start_byte2)

	//check if size matches

	UART_read(uart, &temp, 1);

	if(temp != size){

		//size doesn't match

		return false;

	}//endif:		(temp != size)

	// Read in data bytes

	for(i = 0 ; i <= size ; i++){

		UART_read(uart, &temp, 1);
		rx_buffer[i] = temp;

	}//endfor:		(i = 0 ; i <= size ; i++)

	//calculate checksum

	calc_CS = size;

	for(i=0 ; i<size ; i++){

		calc_CS ^= rx_buffer[i];

	}//endfor:		(i=0 ; i<size ; i++)

	//flag for checksum match

	if(calc_CS != rx_buffer[size]){

		//checksum does not match

		return false;

	}//endif:		(calc_CS != rx_buffer[size]

	//copy buffer into struct

	memcpy (my_struct, rx_buffer, size);

	//fnctn success

	return true;

}//endnctn:		 recv_struct(UART_Handle uart, void* my_struct, enum peripheral_devices device)
