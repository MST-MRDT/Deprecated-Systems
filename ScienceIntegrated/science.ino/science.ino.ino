//Programmers: Chris Dutcher & Jimmy Haviland
// Febuary 24, 2017
//Missouri S&T  Mars Rover Design Team
//Science Board Main program

#include "science.h"
#include "RoveEthernet.h"
#include <SPI.h>
#include "Servo.h"
#include <Wire.h>
//#include "BMP085_t.h"   This file is causing compilation problems

//Variable declaration:
//Stores the result (if any) of commands received and executed
CommandResult result;
//Stores the value received from base station, of which command to execute
uint16_t commandId;
//Stores the size of the commandData received from base station
size_t commandSize;
//Stores the command arguement, sent by base station, to send through to the command
int16_t commandData;
//Stores the value of watchdog, which times out after not receiving a command from base station, to terminate any potential dangerous operations
uint32_t watchdogTimer_us = 0;

//Device objects
//Energia standard servo device class from Servo.h
Servo flap, carousel;
//Pressure sensor object, currently uses problematic file
//BMP085<0> PSensor;

//All non-important pre-loop setup is done here
void setup() {}


void loop() {
  //All important pre-loop setup is done here
  initialize();

  //Main execution loop
  while(1)
  {
    //Resets the message to nothing
    commandSize = 0;
    commandId = 0;
    commandData = 0;

    
    bool sensor_enable[7] = {1,1,1,1,1,1,1};//Determines which sensors send data back  TODO:Does this re-initialize the vars each time?

    //Receives a command form base station and stores the message
    roveComm_GetMsg(&commandId, &commandSize, &commandData);
    
    //Checks the message for an actual command
    if(commandId != 0)
    {
      //We have received a command, so watchdog is reset
      watchdogTimer_us = 0;

      Serial.println(commandId);
      Serial.println(commandData);
      Serial.println(commandSize);
      Serial.println("");

       //Checks the value of the command, and if applicable, executes it
       if(commandId == 0x710)
       {
         if(commandData == 1)
           sensor_enable[0]=1;
         else if(commandData == 2)
           sensor_enable[0]=0;
         else if(commandData == 3)
           sensor_enable[1]=1;
         else if(commandData == 4)
           sensor_enable[1]=0;
         else if(commandData == 5)
           sensor_enable[2]=1;
         else if(commandData == 6)
           sensor_enable[2]=0;
         else if(commandData == 7)
           sensor_enable[3]=1;
         else if(commandData == 8)
           sensor_enable[3]=0;
         else if(commandData == 9)
           sensor_enable[4]=1;
         else if(commandData == 10)
           sensor_enable[4]=0;
         else if(commandData == 11)
           sensor_enable[5]=1;
         else if(commandData == 12)
           sensor_enable[5]=0;
         else if(commandData == 13)
           sensor_enable[6]=1;
         else if(commandData == 14)
           sensor_enable[6]=0;
         else if(commandData == 18)
           turnOnLaser();
         else if(commandData == 19)
           turnOffLaser();
         else if(commandData == 20)
           openFlap();
         else if(commandData == 21)
           closeFlap();
         else if(commandData == 17)
           spectrometer();
       }
       else if(commandId == 0x711)//Carousel
       {
        if(commandData!=5)//We have 5 positions (1-5) and 6 commands (0-6), rotate the carousel if it is a valid position
          rotateCarousel(commandData);
       }
    }
    else //No message was received and we send sensor data
    {
       //Temporary sensor variable, future variable will be altered by sensor functions before being sent
       float sensorTestData = 100.0;
       //check for which sensors to record, and then send through rovecomm
       if(sensor_enable[0])//AirTemp
       {
        sensorTestData = 100.0;
         roveComm_SendMsg(0x720, sizeof(100.0), &sensorTestData); 
       }
       else if(sensor_enable[1]) //AirHumidity
       {
        sensorTestData = 101.0;
         roveComm_SendMsg(0x721, sizeof(101.0), &sensorTestData);
       }
       else if(sensor_enable[2]) //Soil Temp
       {
        sensorTestData = 102.0;
         roveComm_SendMsg(0x722, sizeof(102.0), &sensorTestData);
       }
       else if(sensor_enable[3]) //Soil Humidity
       {
        sensorTestData = 103.0;
         roveComm_SendMsg(0x723, sizeof(103.0), &sensorTestData);
       }
       else if(sensor_enable[4]) //Methane
       {
        sensorTestData = 104.0;
         roveComm_SendMsg(0x728, sizeof(104.0), &sensorTestData);
       }
       else if(sensor_enable[5]) //UV Intensity
       {
        sensorTestData = 105.0;
         roveComm_SendMsg(0x729, sizeof(105.0), &sensorTestData);
       }
       else if(sensor_enable[6]) //Pressure
       {
        sensorTestData = 106.0;
         roveComm_SendMsg(0x72A, sizeof(106.0), &sensorTestData);
       }        

      //Delay before we check for another command from base station
      uint8_t microsecondDelay = 10;
      delayMicroseconds(microsecondDelay);
      watchdogTimer_us += microsecondDelay;
      //Once we have spend two seconds delaying for commands, we terminate potentially dangerous (to astronaughts or the rover) operations and keep them disabled until we receive a command again
      if(watchdogTimer_us >= WATCHDOG_TIMEOUT_US)
      {
        //End dangerous operations here
        Serial.println("Watch out dog!!!!!!");
        watchdogTimer_us = 0;
      }

    }//End else
    
  }//End while
}//End loop()

//Functions:

//All important pre-loop setup is done here outside of setup, for some reason
void initialize()
{
  roveComm_Begin(IP_ADDRESS[0], IP_ADDRESS[1], IP_ADDRESS[2], IP_ADDRESS[3]);
  Serial.begin(9600);
  pinMode(PQ_3, OUTPUT);//laser
  pinMode(PF_0, OUTPUT);//LED
  pinMode(PD_0, INPUT);//photodiode1
  pinMode(PD_1, INPUT);//photodiode2
  flap.attach(PM_5);
  carousel.attach(PM_4);
  //PSensor.begin();//Initalize pressure Sensor (non-compiling)
  /************************************
  * Spectrometer motor Initiaslization
  /***********************************/
  pinMode(PM_6, OUTPUT);//sleep
  pinMode(PQ_1, OUTPUT);//phase
  pinMode(PP_3, OUTPUT);//enable
  pinMode(PF_0, OUTPUT);//LED
  pinMode(PK_7, OUTPUT);//enable voltage reg
  digitalWrite(PK_7, HIGH);//turn on voltage reg
  
  Serial.println("Initialized!");
}


//Spectometer sub-routine TODO: roveComm_SendMsg(...) the data
void spectrometer()
{
   uint16_t photo1, photo2;
   //turn on motor, run for 5s before continuing
   //direction is a bool! change true/false for direction
   spectroMotorForward();   
   //do nothing except leave motor on for 5s
   delay(5000);
   //turn on laser
   turnOnLaser();   
   //laser is on, motor should still be going?
   //keep laser and motor on for 30s
   int timer = 0;
   //loop takes analog readings 
   //delays for 1/8 second
   //should repeat until roughly 30s have passed.
   while (timer <= 30000)
   {
    //read photo diodes
    photo1 = analogRead(PD_0);
    photo2 = analogRead(PD_1);
    //print data
    Serial.println("Data for photodiodes 1 & 2, respectively:");
    Serial.println(photo1);
    Serial.println(photo2);
    timer += 125;
    delay(125); 
   }
   //turn off laser
   turnOffLaser();
   //turn off motor
   spectroMotorOff();
   //delay couple seconds
   delay(2000);
   //return motor to start position
   //opposite direction than what was called earlier!
   spectroMotorReverse();
   //wait 35s for motor to return
   delay(35000);
   //stop motor again
   spectroMotorOff();
   //wait 10 seconds before repeating the loop
   delay(10000); 
   return;
}

//Given a specific part command, runs individual parts of the spectrometer (not currently used)
void partial_spec(const uint16_t data)
{
    if(data==0)
    openFlap();
    else if(data==1)
    closeFlap();
    else if(data==2)
    turnOnLaser();
    else if(data==3)
    turnOffLaser();
    else if(data==4)
    spectroMotorForward();
    else if(data==5)
    spectroMotorReverse();
    else if(data==6)
    spectroMotorOff();
    else if(data==7)
    readPhotoDiode1();
    else if(data==8)
    readPhotoDiode1();
    return;
}

//Turns on the spectrometer laser
void turnOnLaser()
{
  //turn on laser by setting pin to High
  digitalWrite(PQ_3, HIGH);//laser
  digitalWrite(PF_0, HIGH);//LED
  return;
}

//Turns off the spectormeter laser
void turnOffLaser()
{
  //turn off laser by setting pin to low
  digitalWrite(PQ_3, LOW);//laser
  digitalWrite(PF_0, LOW);//led
  return;
}

//Opens the sample cache cover flap
void openFlap()
{
  //does flap open at 180 degrees or 0?
  flap.write(170);
  return;
}

//Closes the sample cache cover flap
void closeFlap()
{
  //again, does flap close at 180 degrees or 0?
  flap.write(0);
  return;
}

//Rotates the sample cache carousel to the given position
void rotateCarousel(const uint16_t pos)
{
  carousel.write(180/4 * pos);  // TODO: cache positions must be tweeked here.
  return;
}

//Turns off the spectrometer motor
void spectroMotorOff()
{
  digitalWrite(PP_3, LOW);//en
  digitalWrite(PM_6, LOW);//nsleep
  return;
}

//Returns one soil temperature reading
float instantSoilTemp()
{
  const int analogRes = 4095;
  float voltage = (analogRead(PB_5) * 3.24 / analogRes);
  float degC = (voltage - 0.5) * 100.0;
  return degC;
}

//Returns one air temperature reading
float instantAirTemp()
{
  const int analogRes = 4095;
  float voltage = (analogRead(PK_2) * 3.24 / analogRes);
  float degC = (voltage - 0.5) * 100.0;
  return degC;
}

//Returns on UV intensity reading
float instantUV()
{
 //Enable pin here
  float uvInten = mapfloat(analogRead(PK_0), .99, 2.8, 0, 15);
  return uvInten;
}

//The Arduino Map function but for floats (used in UV intensity)
//From: http://forum.arduino.cc/index.php?topic=3922.0
float mapfloat(float x, float in_min, float in_max, float out_min, float out_max)
{
  return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
}

//Returns one PhotoDiode 1 reading
int readPhotoDiode1()
{
  return analogRead(PD_0);  
}

//Returns one PhotoDiode 2 reading
int readPhotoDiode2()
{
  return analogRead(PD_1);
}

//Turns on the spectrometer motor on in the forward direction (the direction it will go when reading the photo-diodes)
void spectroMotorForward()
{
   digitalWrite(PQ_1, LOW);//phase, low = forward
   digitalWrite(PP_3, HIGH);//enable
   digitalWrite(PM_6, HIGH);//nSleep
   return;
}

//Turns the spectrometer motor on in the backwards direciton (when the spectrometer resets)
void spectroMotorReverse()
{
   digitalWrite(PQ_1, HIGH);
   digitalWrite(PP_3, HIGH);
   digitalWrite(PM_6, HIGH);
   return;
}

//Returns one reading of the air humidity TODO: Insert actual sensor code
float instantAirHumidity()
{
  float holderOfPlace = 0.0;
  return holderOfPlace;  
}

//Returns one reading of the soil humidity TODO: Insert actual sensor code
float instantSoilHumidity()
{
  float holderOfPlace = 0.0;
  return holderOfPlace;    
}

//Returns one reading of methane TODO: Insert actual sensor code
float instantMethane()
{
  float holderOfPlace = 0.0;
  return holderOfPlace;  
}

//Returns one air pressure reading TODO: Insert actual sensor code
float instantPressure()
{
  float holderOfPlace = 0.0;
  return holderOfPlace;
}

