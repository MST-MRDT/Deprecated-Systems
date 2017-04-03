#include <Energia.h>

#ifndef DYNAMIXEL_H
#define DYNAMIXEL_H

class Dynamixel
{
  public:
    // construct a Dynamixel object based on Serial channel
    Dynamixel(HardwareSerial &s) { serial = s; }
    // sets the value of a specified register
    void setRegister(unsigned char ID, unsigned char ins, unsigned char data);
    // reset the dynamixel to factory default settings
    void factoryReset(unsigned char id);
    // set a 2-byte register location
    void setRegister2(unsigned char ID, unsigned char ins, int data);
    // read the value of a specified register
    unsigned int readRegister2(unsigned char ID, unsigned char ins);
    // read the 2-byte value of a specified register
    int readRegister(unsigned char ID, unsigned char ins);

  private:
    HardwareSerial serial;
};

#endif
