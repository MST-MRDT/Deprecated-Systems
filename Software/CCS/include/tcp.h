/*
 * tcp.h
 *
 * Keenan Johnson
 */

#ifndef TCP_H_
#define TCP_H_

#include <ti/drivers/GPIO.h>
#include <ti/drivers/SPI.h>
#include <ti/drivers/UART.h>
#include <inc/hw_ssi.h>
#include <driverlib/ssi.h>
#include <inc/hw_memmap.h>
#include <inc/hw_types.h>
#include "driverlib/sysctl.h"
#include <ti/drivers/Watchdog.h>
#include <ti/drivers/SPI.h>
#include "driverlib/rom.h"
#include <driverlib/pin_map.h>
#include <xdc/runtime/System.h>

///////////////////////////////
//  W5100 Codes
///////////////////////////////

#define WIZNET_WRITE_OPCODE 0xF0
#define WIZNET_READ_OPCODE 0x0F

#define MR    0x0000   // Mode Register
#define GAR   0x0001   // Gateway Address: 0x0001 to 0x0004
#define SUBR  0x0005   // Subnet mask Address: 0x0005 to 0x0008
#define SAR   0x0009   // Source Hardware Address (MAC): 0x0009 to 0x000E
#define SIPR  0x000F   // Source IP Address: 0x000F to 0x0012
#define RMSR  0x001A   // RX Memory Size Register
#define TMSR  0x001B   // TX Memory Size Register
#define IR    0x0015   // Interrupt
#define IMR   0x0016   // Interrupt Mask

#define S0_MR      0x0400      // Socket 0: Mode Register Address
#define S0_CR      0x0401      // Socket 0: Command Register Address
#define S0_IR      0x0402      // Socket 0: Interrupt Register Address
#define S0_SR      0x0403      // Socket 0: Status Register Address
#define S0_PORT    0x0404      // Socket 0: Source Port: 0x0404 to 0x0405
#define S0_TX_FSR  0x0420      // Socket 0: Tx Free Size Register: 0x0420 to 0x0421
#define S0_TX_RD   0x0422      // Socket 0: Tx Read Pointer Register: 0x0422 to 0x0423
#define S0_TX_WR   0x0424      // Socket 0: Tx Write Pointer Register: 0x0424 to 0x0425
#define S0_RX_RSR  0x0426      // Socket 0: Rx Received Size Pointer Register: 0x0425 to 0x0427
#define S0_RX_RD   0x0428      // Socket 0: Rx Read Pointer: 0x0428 to 0x0429

#define TXBUFADDR  0x4000      // W5100 Send Buffer Base Address
#define RXBUFADDR  0x6000      // W5100 Read Buffer Base Address

// S0_MR values
#define MR_TCP        0x01    // TCP

// S0_CR values
#define CR_OPEN          0x01     // Initialize or open socket
#define CR_LISTEN        0x02     // Wait connection request in tcp mode(Server mode)
#define CR_CONNECT       0x04     // Send connection request in tcp mode(Client mode)
#define CR_DISCON        0x08     // Send closing reqeuset in tcp mode
#define CR_CLOSE         0x10     // Close socket
#define CR_SEND          0x20     // Update Tx memory pointer and send data
#define CR_SEND_MAC      0x21     // Send data with MAC address, so without ARP process
#define CR_SEND_KEEP     0x22     // Send keep alive message
#define CR_RECV          0x40     // Update Rx memory buffer pointer and receive data

// S0_SR values
#define SOCK_CLOSED      0x00     // Closed
#define SOCK_INIT        0x13     // Init state
#define SOCK_LISTEN      0x14     // Listen state
#define SOCK_SYNSENT     0x15     // Connection state
#define SOCK_SYNRECV     0x16     // Connection state
#define SOCK_ESTABLISHED 0x17     // Success to connect
#define SOCK_FIN_WAIT    0x18     // Closing state
#define SOCK_CLOSING     0x1A     // Closing state
#define SOCK_TIME_WAIT   0x1B     // Closing state
#define SOCK_CLOSE_WAIT  0x1C     // Closing state
#define SOCK_LAST_ACK    0x1D     // Closing state
#define SOCK_UDP         0x22     // UDP socket
#define SOCK_IPRAW       0x32     // IP raw mode socket
#define SOCK_MACRAW      0x42     // MAC raw mode socket
#define SOCK_PPPOE       0x5F     // PPPOE socket

#define SN_DIPR			 0x040C	  // Server IP
#define SN_DPORT0		 0x0410	  // Server Port
#define SN_DPORT1		 0x0411	  // Server Port

#define TX_BUF_MASK      0x07FF   // Tx 2K Buffer Mask:
#define RX_BUF_MASK      0x07FF   // Rx 2K Buffer Mask:

//////////////////
// FUNCTIONS
//////////////////

// Sends 32 bits to W5100
void SPI_Send(uint16_t addr, uint32_t data);

// Receives 32 bits from w5100
uint32_t SPI_Read(uint32_t addr);

// Initializes Stellaris SPI hardware
void init_spi();

// Sets up TCP and start socket
void init_w5100();

// Initializes the socket
// Sets local port
int init_socket();

// Makes TCP connection
void tcp_connect();

// Checks if socket status
// register is connected
bool socket_connected();

// Closes Socket
void socket_close();

// Send Data
void send_tcp_data( uint8_t *buf, uint16_t buflen );

// Receive Data from TCP chip
void receive_tcp_data(uint8_t *buf, uint16_t buflen);

#endif /* TCP_H_ */
