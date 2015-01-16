//Using the TI NDK API
//
//
//

#include "listen_handshake_tcp_ip_proto.h"

#define TCPPACKETSIZE 1024
#define TCPPORT 4500
#define NUM_CLIENT_QUEU_CAN_HANDLE 3

Void rove_tcp_handler(UArg arg0, UArg arg1)
{

	//open file descriptor environment in this Taks's private memory (we declare at comile time, so this a stack frame. Task_Create() woud use a Heap.
	//this is memory space for 16 socket structures. We only use one
	//TaskSelf returns a handle to rove_tcp_handler, much like .this
    fdOpenSession(TaskSelf());

    //created our listen_handshake_socket
    SOCKET listen_handshake_socket;

    //lets see how this looks intitialized
    System_printf("\n");
    System_printf("listen handshake socket = %d",listen_handshake_socket);
    System_printf("\n");

    // SysMin will only print to the console when you call flush or exit
    System_flush();

    //AF_INET			-	ipv4 config (as opposed to ipv6)
    //SOCK_STREAM		-	connection type of socket (as opposed to raw sockets, datagram, etc)
    //IPPROTO_TCP		- 	tcp and ip protocol (as opposed to udp, etc)
    //If socket() succeeds, the function returns a file descriptor representing the socket
    //Otherwise, a value of INVALID_SOCKET (TI's constant for an NDK API error conditions not -1) is returned and the function fdError() returns the type of error
    listen_handshake_socket = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
    if (listen_handshake_socket < 0) {
        System_printf("socket() failed\n");
        Task_exit();
        return;
    }//endif

    //lets see what fdstatus has to see about our socket
    //fdstatus returns 0, so we are init to 111 just for any number that is NOT a fdstatus
    int fd_listen_handshake_socket_status = 111;

    //fdstatus returns 0 for success and writes the error integer into arg3 &fd_listen_handshake_socket_statu
    int fdstatusWorks =	fdStatus(listen_handshake_socket, FDSTATUS_RECV, &fd_listen_handshake_socket_status);
    System_printf("\n");
    System_printf("fd listen handshake status after socket() = %d", fd_listen_handshake_socket_status);
    System_printf("\n");
    // SysMin will only print to the console when you call flush or exit */
    System_flush();

    //We have now instatiated and defined a socket

    //Define our Struct for Socket Address Information on the File Description Environment
    //We really only care about IP ADDRESS and PORT. Everything else is basic config for ip tcp
    struct sockaddr_in sLocalAddr;

    //memset is seting this structure to zero
    memset((char *)&sLocalAddr, 0, sizeof(sLocalAddr));

    //AF_INET			-	ipv4 config (as opposed to ipv6)
    sLocalAddr.sin_family = AF_INET;

    sLocalAddr.sin_len = sizeof(sLocalAddr);

    //INADDR_ANY		-	0.0.0.0.0.0 implies we listen to ANY IP at this port
    //htonl				-	host to network long. This flips the byte order b/c the network transport layer needs them backwards (endianess)
    sLocalAddr.sin_addr.s_addr = htonl(INADDR_ANY);

    //hardcodeing the Rove Red Port
    sLocalAddr.sin_port = htons(TCPPORT);

    //lets see what bindStatus has to see about our socket
    //bind() returns 0, so we are init to 111 just for any number that is NOT a fdstatus
    int bindStatus = 111;

    //If bind() succeeds, this function returns 0
    //Otherwise, a value of -1 is returned and the function errno() returns the type of error
    bindStatus = bind(listen_handshake_socket, (struct sockaddr *)&sLocalAddr, sizeof(sLocalAddr));
    	if (bindStatus < 0) {
            System_printf("bind() failed\n");
            fdClose(listen_handshake_socket);
            Task_exit();
            return;
        }//endif


    //bindstatus returns 0 for success and writes the error integer into arg3 &fd_listen_handshake_socket_statu
    System_printf("\n");
    System_printf("listen handshake bind status = %d", bindStatus);
    System_printf("\n");
    //SysMin will only print to the console when you call flush or exit */
    System_flush();

    //lets see what fdstatus has to see about our socket now
    //fdstatus returns 0, so we are init to 111 just for any number that is NOT a fdstatus
    fd_listen_handshake_socket_status = 111;
    fdstatusWorks = 111;
    //fdstatus returns 0 for success and writes the error integer into arg3 &fd_listen_handshake_socket_statu
    fdstatusWorks =	fdStatus(listen_handshake_socket, FDSTATUS_RECV, &fd_listen_handshake_socket_status);
    System_printf("\n");
    System_printf("fd listen handshake status after bind() = %d", fd_listen_handshake_socket_status);
    System_printf("\n");
    // SysMin will only print to the console when you call flush or exit */
    System_flush();


    //NUM_CLIENT_QUEU_CAN_HANDLE	- 	this is set to 3 just b/c we want to be careful about the queue size
    //Our actual App can ONLY handle ONE client. We just have a big queue right now for safe bounds in dev
    //lets see what listenStatus has to see about our socket
    //bind() returns 0, so we are init to 111 just for any number that is NOT a fdstatus
    int listenStatus = 111;

    //If listen succeeds, this function returns 0
    //Otherwise, a value of -1 is returned and the function fdError() returns the type of error
    listenStatus = listen(listen_handshake_socket, NUM_CLIENT_QUEU_CAN_HANDLE);
    	if (listenStatus < 0) {
            System_printf("listen() failed\n");
            fdClose(listen_handshake_socket);
            Task_exit();
            return;
        }//endif


    //bindstatus returns 0 for success and writes the error integer into arg3 &fd_listen_handshake_socket_statu
    System_printf("\n");
    System_printf("listen handshake listenStatus = %d", listenStatus);
    System_printf("\n");
    //SysMin will only print to the console when you call flush or exit */
    System_flush();

    //lets see what fdstatus has to see about our socket now
    //fdstatus returns 0, so we are init to 111 just for any number that is NOT a fdstatus
    fd_listen_handshake_socket_status = 111;
    fdstatusWorks = 111;
    //fdstatus returns 0 for success and writes the error integer into arg3 &fd_listen_handshake_socket_status
    fdstatusWorks =	fdStatus(listen_handshake_socket, FDSTATUS_RECV, &fd_listen_handshake_socket_status);
    System_printf("\n");
    System_printf("fd listen handshake status after listen() = %d", fd_listen_handshake_socket_status);
    System_printf("\n");
    // SysMin will only print to the console when you call flush or exit */
    System_flush();


    //lets see what optionStatus has to see about our socket
    //setsockop() returns 0, so we are init to 111 just for any number that is NOT a fdstatus
    int optionStatus = 111;

    //setsocketopt() needs US to allocate a memory space for the option AND pass it in to the fnctn as arg4 and arg5
    int optval;
    int optlen = sizeof(optval);


    //SOL_SOCKET	-	at the SOCKET level, as opposed to lower layers in teh OSI/TCP heirarchy
    //SO_KEEPALIVE	-	NDK will periodically send a keep alive packet under the hood
    //By default this sends KEEP probes every 75 seconds AFTER two hours of idle
    //TODO change this defaultin the NDK - IP - .cfg options to a MUCH shorter idle time. pg 173 of NDK API spru524i

    //If setsockopt succeeds, this function returns 0
    //Otherwise, a value of -1 is returned and the function errno() returns the type of error
    optionStatus = setsockopt(listen_handshake_socket, SOL_SOCKET, SO_KEEPALIVE, &optval, optlen);
    if (optionStatus < 0) {
            System_printf("setsockoopt() failed\n");
            fdClose(listen_handshake_socket);
            Task_exit();
            return;
        }//endif


    //optionStatus returns 0 for success and writes the error integer into arg3 &fd_listen_handshake_socket_statu
    System_printf("\n");
    System_printf("listen handshake optionStatus = %d", listenStatus);
    System_printf("\n");
    //SysMin will only print to the console when you call flush or exit */
    System_flush();

    //lets see what fdstatus has to see about our socket now
    //fdstatus returns 0, so we are init to 111 just for any number that is NOT a fdstatus
    fd_listen_handshake_socket_status = 111;
    fdstatusWorks = 111;
    //fdstatus returns 0 for success and writes the error integer into arg3 &fd_listen_handshake_socket_status
    fdstatusWorks =	fdStatus(listen_handshake_socket, FDSTATUS_RECV, &fd_listen_handshake_socket_status);
    System_printf("\n");
    System_printf("fd listen handshake status after setsockopt() = %d", fd_listen_handshake_socket_status);
    System_printf("\n");
    // SysMin will only print to the console when you call flush or exit */
    System_flush();

    SOCKET accept_recv_socket;
    struct sockaddr_in accept_recv_socket_addr;
    int accept_recv_socket_addr_len = sizeof(accept_recv_socket);

    //accept() returns positive integer for success and -1 for failure
    accept_recv_socket = accept(listen_handshake_socket, (struct sockaddr_in*)&accept_recv_socket_addr, &accept_recv_socket_addr_len);
    if (accept_recv_socket < 0) {
                System_printf("accept() failed\n");
                fdClose(accept_recv_socket);
                fdClose(listen_handshake_socket);
                Task_exit();
                return;
            }//endif


    //accept() returns positive integer for success and -1 for failure
       System_printf("\n");
       System_printf("after accept() accept_recv_socket = %d", accept_recv_socket);
       System_printf("\n");
       //SysMin will only print to the console when you call flush or exit */
       System_flush();

       //lets see what fdstatus has to see about our socket now
       //fdstatus returns 0, so we are init to 111 just for any number that is NOT a fdstatus
       fd_listen_handshake_socket_status = 111;
       fdstatusWorks = 111;
       //fdstatus returns 0 for success and writes the error integer into arg3 &fd_listen_handshake_socket_status
       fdstatusWorks =	fdStatus(listen_handshake_socket, FDSTATUS_RECV, &fd_listen_handshake_socket_status);
       System_printf("\n");
       System_printf("fd listen handshake status after accept() = %d", fd_listen_handshake_socket_status);
       System_printf("\n");
       // SysMin will only print to the console when you call flush or exit */
       System_flush();


    fdClose(listen_handshake_socket);
    Task_exit();


}//endfnct rove_tcp_handler



