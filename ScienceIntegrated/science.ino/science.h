#include "RoveBoard.h"
#include "RoveComm.h"
#include <stdint.h>
#include "JointControlFramework.h"

//enums
typedef enum CommandResult
{
  Success,
  Fail
} CommandResult;


//var/pins
const uint32_t WATCHDOG_TIMEOUT_US = 2000000; //the amount of microseconds that should pass without getting a transmission from base station before the arm ceases moving for safety
const uint8_t IP_ADDRESS [4] = {192, 168, 1, 135};

//functions


void initialize();
void spectrometer();
void partial_spec(const uint16_t data);


void turnOnLaser();
void turnOffLaser();
void openFlap();
void closeFlap();
void rotateCarousel(const uint16_t pos);//Rotates carosel to position 0-4 from current position
void spectroMotorOn(const bool dir);//Direction is either positive or negative (0 or 1)
void spectroMotorOff();
float instantSoilTemp();//Returns one Soil Temperature reading
float instantAirTemp();//Returns one Air Termperature reading
float instantUV();//Return one UV intensisty reading
//int averageAnalogRead(int pinToRead);//Unused function for old version of UV read
float mapfloat(float x, float in_min, float in_max, float out_min, float out_max);//Maps the float value for UV intensity
float instantPressure();//Returns one pressure reading
int readPhotoDiode1();
int readPhotoDiode2();


