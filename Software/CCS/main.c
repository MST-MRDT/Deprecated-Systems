// The rover
//
// Keenan Johnson 2014

/* XDCtools Header files */
#include <xdc/std.h>
#include <xdc/cfg/global.h>
#include <xdc/runtime/System.h>

/* BIOS Header files */
#include <ti/sysbios/BIOS.h>
#include <ti/sysbios/knl/Queue.h>
#include <ti/sysbios/knl/Mailbox.h>
#include <xdc/cfg/global.h>

/* TI-RTOS Header files */
#include <ti/drivers/GPIO.h>
#include <ti/drivers/SPI.h>
#include <inc/hw_ssi.h>
#include <driverlib/ssi.h>
#include <inc/hw_memmap.h>
#include <inc/hw_types.h>
#include "driverlib/sysctl.h"
#include <ti/drivers/Watchdog.h>
#include <ti/drivers/SPI.h>
#include "driverlib/uart.h"
#include "driverlib/rom.h"

/* Board Header file */
#include "Board.h"

// Driver Files
#include "include/muxes.h"
#include "include/tcp.h"
#include "include/uarts.h"
#include "global.h"

//Task Files
#include "tasks/cmd_task.h"
#include "tasks/Mux_test_task.h"
#include "tasks/telemetry_task.h"
#include "tasks/json_test.h"

// UART Handles
UART_Handle uart0;
UART_Handle uart1;
UART_Handle uart2;
UART_Handle uart3;
UART_Handle uart4;
UART_Handle uart5;
UART_Handle uart7;

Int main(Void)
 {
	// TI RTOS Inits
    Board_initGeneral();
    Board_initGPIO();
    Board_initUART();

    // Custom Inits
    init_mux_pins();

    // Turn on LED for fun
    GPIO_write(Board_LED0, Board_LED_ON);

    // Init UARTS
    uart0 = init_uart( 0, 115200 );
    uart1 = init_uart( 1, 115200 );
    uart2 = init_uart( 2, 115200 );
    uart3 = init_uart( 3, 115200 );
    uart4 = init_uart( 4, 115200 );
    uart5 = init_uart( 5, 115200 );
    uart7 = init_uart( 7, 115200 );

    // Start BIOS (RTOS)
    BIOS_start();

    //System_printf("%c", input);
	//System_flush();

    return (0);
}
