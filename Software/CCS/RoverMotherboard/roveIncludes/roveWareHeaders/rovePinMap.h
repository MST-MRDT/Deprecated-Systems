/*
 * rovePinMap.h
 *
 *  Created on: Mar 3, 2015
 *      Author: Owen Chiaventone
 *
 *  Every name in this file should correspond to a net in the
 *  board schematic
 */

#ifndef ROVEPINMAP_H_
#define ROVEPINMAP_H_

#define HIGH 1
#define LOW 0

//Mux Select Line pins
/*
 * U3_MUX_S0 PH0
 * U3_MUX_S1 PH1
 * U4_MUX_S0 PM6
 * U4_MUX_S1 PM7
 * U5_MUX_S0 PL0
 * U5_MUX_S1 PL1
 * U6_MUX_S0 PK2
 * U6_MUX_S1 PK3
 * U7_MUX_S0 PE0
 * U7_MUX_S1 PE1
 */

// Shitty optimization notes:
// These have to be sequential integers
// starting at 0 for compiler to optimize
// digitalWrite to a jump table that runs in O(1)
// If they are nonconsecutive or non-0 indexed
// Then it will revert to if-else-else
// And digitalWrite will run in O(n)

#define U3_MUX_S0 0
#define U3_MUX_S1 1
#define U4_MUX_S0 2
#define U4_MUX_S1 3
#define U5_MUX_S0 4
#define U5_MUX_S1 5
#define U6_MUX_S0 6
#define U6_MUX_S1 7
#define U7_MUX_S0 8
#define U7_MUX_S1 9

//Special Devices
#define ONBOARD_ROVECOMM 19

//Uarts

/*
 * Uart pins:
 * U3RX PA4
 * U3TX PA5
 * U2RX PA6
 * U2TX PA7
 * U6RX PK0
 * U6TX PK1
 * U7RX PP0
 * U7TX PP1
 */


#define U3RX uart3
#define U3TX uart3
#define U2RX uart2
#define U2TX uart2
#define U6RX uart6
#define U6TX uart6
#define U7RX uart7
#define U7TX uart7





#endif /* ROVEPINMAP_H_ */
