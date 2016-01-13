// RoveComm.h
// Author: Gbenga Osibodu

#ifndef ROVECOMM_H
#define ROVECOMM_H

#include <stdint.h>
#include <netinet/in.h>

void RoveCommBegin();
void RoveCommGetMsg(uint16_t* dataID, size_t* size, void* data);
void RoveCommSendMsgTo(uint16_t dataID, size_t size, const void* const data, in_addr_t destIP, uint16_t destPort, uint8_t flags);
void RoveCommSendMsg(uint16_t dataID, size_t size, const void* const data);

#endif

