/*
 * tcp_task.h
 *
 */

#ifndef MUX_TEST_TASK_H_
#define MUX_TEST_TASK_H_

//Read byte from TCP
//UART_read(uart7, &tcp_input, 1);

extern Void mux_test(UArg arg0, UArg arg1)
{
	UART_Handle uart1 = init_uart( 5 );

	char* tcp_input;

	while(1)
	{
		//Go foreward
		tcp_input = (char*) 0x9B;

		//Send command
		mux_5(13);
		SysCtlDelay( SysCtlClockGet() / 10 );
		UART_writePolling(uart1, tcp_input, 1);
		SysCtlDelay( SysCtlClockGet()  );

		//Stop
		tcp_input = (char*) 0x80;
		//Send command
		SysCtlDelay( SysCtlClockGet() / 10 );
		UART_writePolling(uart1, tcp_input, 1);
		SysCtlDelay( SysCtlClockGet()  );
	}
}

#endif /* TCP_TASK_H_ */
