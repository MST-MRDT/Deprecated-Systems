// RoveComm.c
// Author: Gbenga Osibodu

#include "RoveComm.h"

struct RoveComm RoveComm;

void RoveCommBegin(int port){
  RoveComm.socket = socket(PF_INET, SOCK_DGRAM, IPPROTO_UDP);

  memset(&RoveComm.myAddr, 0, sizeof RoveComm.myAddr);
  RoveComm.myAddr.sin_family = AF_INET;
  RoveComm.myAddr.sin_addr.s_addr = htonl(INADDR_ANY);
  RoveComm.myAddr.sin_port = htons(port);
  
  if (-1 == bind(RoveComm.socket, (struct sockaddr *)&RoveComm.myAddr, sizeof RoveComm.myAddr)) {
    perror("error bind failed");
    close(RoveComm.socket);
    exit(EXIT_FAILURE);
  }
  
  int i;
  for (i=0; i < ROVECOMM_MAX_SUBSCRIBERS; i++) {
    RoveComm.subscribers[i] = INADDR_NONE;
  }
}

void RoveCommGetUdpMsg(uint16_t* dataID, uint16_t* size, void* data){
  struct sockaddr_in incoming;
  ssize_t recsize;
  socklen_t fromlen;
  fd_set socketSet;
  struct timeval timeout;
  
  uint8_t flags = 0;
  
  *dataID = 0;
  *size = 0;
  
  fromlen = sizeof(RoveComm.myAddr);
  FD_ZERO(&socketSet);
  FD_SET(RoveComm.socket,&socketSet);
  timeout.tv_usec = 0;
  timeout.tv_sec = 0;
  select(RoveComm.socket +1, &socketSet,NULL,NULL,&timeout);
  if (FD_ISSET(RoveComm.socket, &socketSet)){
    memset(&incoming, 0, fromlen);
    
    recsize = recvfrom(RoveComm.socket, (void*)RoveComm.buffer, sizeof RoveComm.buffer, 0, (struct sockaddr*)&incoming, &fromlen);

    if (recsize < 0) {
      fprintf(stderr, "%s\n", strerror(errno));
      exit(EXIT_FAILURE);
    }
    
    RoveCommParseUdpMsg(dataID, size, data, &flags);
  }
}


void RoveCommParseUdpMsg(uint16_t* dataID, uint16_t* size, void* data, uint8_t* flags) {
  int protocol_version = RoveComm.buffer[0];
  switch (protocol_version) {
    case 1:
      *flags = RoveComm.buffer[3];
      *dataID = RoveComm.buffer[4];
      *dataID = (*dataID << 8) | RoveComm.buffer[5];
      *size = RoveComm.buffer[6];
      *size = (*size << 8) | RoveComm.buffer[7];
      int i;
      for (i=0; i < *size; i++) {
        ((uint8_t*)data)[i] = RoveComm.buffer[i + ROVECOMM_HEADER_LENGTH];
      }
  }
}

bool RoveCommSendPacket(in_addr_t destIP, int destPort, uint8_t* msg, int msgSize) {
  struct sockaddr_in destination;
  
  memset(&destination, 0, sizeof(destination));
  destination.sin_family = AF_INET;
  destination.sin_addr.s_addr = (destIP);
  destination.sin_port = htons(destPort);
  
  sendto(RoveComm.socket, msg, msgSize, 0,(struct sockaddr*)&destination, sizeof(destination));
  return true;
}

void RoveCommSendMsgTo(uint16_t dataID, uint16_t size, void* data, in_addr_t destIP, int destPort, uint8_t flags) {
  int packetSize = size + ROVECOMM_HEADER_LENGTH;
  uint8_t buffer[packetSize];
  
  buffer[0] = ROVECOMM_VERSION;
  buffer[1] = 0x00;
  buffer[2] = 0xFF;
  buffer[3] = flags;
  buffer[4] = dataID >> 8;
  buffer[5] = dataID & 0x00FF;
  buffer[6] = size >> 8;
  buffer[7] = size & 0x00FF;
  
  int i;
  for (i=0; i < size; i++) {
    buffer[i + ROVECOMM_HEADER_LENGTH] = ((uint8_t*)data)[i];
  }
  
  RoveCommSendPacket(destIP, destPort, buffer, packetSize);
}

void RoveCommSendMsg(uint16_t dataID, uint16_t size, void* data) {
  int i = 0; 
  
  while (i < ROVECOMM_MAX_SUBSCRIBERS) {
    if (RoveComm.subscribers[i] == INADDR_NONE) {
      RoveCommSendMsgTo(dataID, size, data, RoveComm.subscribers[i], ROVECOMM_PORT, 0);
    }
    i++;
  }
}
