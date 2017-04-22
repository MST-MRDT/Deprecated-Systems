// github version
#include <Servo.h>

#include <SPI.h>
#include <Ethernet.h>
#include <EthernetUdp.h>

#include <RoveBoard.h>
#include <RoveEthernet.h>
#include <RoveComm.h>
#include <RoveDynamixel.h>

//---Pin assignments:
// Camera PWM Controls
#define PWM0 PD_2
#define PWM1 PD_3
#define PWM2 PD_1
#define PWM3 PD_0

// Dropbays
#define DROPBAY0 PK_0
#define DROPBAY1 PF_1
#define DROPBAY2 PP_0
#define DROPBAY3 PL_0

// Dynamixel Channels
#define GIMB1_SER 3 //3
#define GIMB2_SER 2 //2
#define DYN1_SER  5 //5
#define DYN2_SER  7 //7
//-------------------

//Camera pulse lengths (ms)
#define SHORT_SIGNAL 1000
#define MID_SIGNAL 1500
#define LONG_SIGNAL 2000

//Dynamixel ID's
#define HOR_CAM_1  1
#define VERT_CAM_1 2
#define HOR_CAM_2  1
#define VERT_CAM_2 2

//Dynamixel function ID's
#define ID_CW_LIMIT 6
#define ID_CCW_LIMIT 8
#define ID_SPEED 32

//Basestation command ID's
#define ID_CAMERA_COMMAND 1568
#define ID_GIMBAL1_SPEED 1552
#define ID_CAMERA_MENU 1569
#define ID_DROP_BAY 1584
#define ID_GIMBAL2_SPEED 1553

#define DROPBAY_ANGLE_OPEN 170

#define TIMEOUT_TICKS 1000

#define DYNA_BAUD 1000000

// bools for use of gimbals (writing to unused Dynamixels results in program hangs)
#define USE_GIMB1 true 
#define USE_GIMB2 true

Dynamixel gimb1_hor, gimb1_vert;
Dynamixel gimb2_hor, gimb2_vert;

uint16_t dataID = 0;
size_t size = 0;
char data[8];
int counter;

Servo Dropbay[4];

void setup() {
  // begin comms with Monitor
  Serial.begin(9600);
  delay(100);
  // initialize gimbal dynamixels
  if(USE_GIMB1){
    DynamixelInit(&gimb1_hor,  AX, HOR_CAM_1, GIMB1_SER, DYNA_BAUD);
    DynamixelInit(&gimb1_vert, AX, VERT_CAM_1, GIMB1_SER, DYNA_BAUD);
    DynamixelSetMode(gimb1_hor, Wheel);
    DynamixelSetMode(gimb1_vert, Wheel);
    blink(5, gimb1_hor);
    blink(5, gimb1_vert);
 }
  if(USE_GIMB2){
    DynamixelInit(&gimb2_hor,  AX, HOR_CAM_2, GIMB2_SER, DYNA_BAUD);
    DynamixelInit(&gimb2_vert, AX, VERT_CAM_2, GIMB2_SER, DYNA_BAUD);    
    DynamixelSetMode(gimb2_hor, Wheel);
    DynamixelSetMode(gimb2_vert, Wheel);
    blink(5, gimb2_hor);
    blink(5, gimb2_vert);    
  }
  
  // set camera control pins to output
  pinMode(PWM0,OUTPUT);
  pinMode(PWM1,OUTPUT);
  pinMode(PWM2,OUTPUT);
  pinMode(PWM3,OUTPUT);
  
  // write low signal to camera pins
  digitalWrite(PWM0,0);
  digitalWrite(PWM1,0);
  digitalWrite(PWM2,0);
  digitalWrite(PWM3,0);
  
  // pair servos to correct PWM pins
  Dropbay[0].attach(DROPBAY0);
  Dropbay[1].attach(DROPBAY1);
  Dropbay[2].attach(DROPBAY2);
  Dropbay[3].attach(DROPBAY3);
  
  delay(100);

  // begin communicating with RED
  roveComm_Begin(192,168,1,134);

  // enable connection LEDs
  Ethernet.enableLinkLed();
  Ethernet.enableActivityLed();
  
  delay(100);
}

uint8_t* OFF = new uint8_t(0);
uint8_t* ON = new uint8_t(1);
void blink(int num_times, Dynamixel dyn){
  for(int i = 0; i < num_times; i++)
  {
    DynamixelSendWriteCommand(dyn, DYNAMIXEL_LED, 1, ON); // turn on LED
    delay(100);
    DynamixelSendWriteCommand(dyn, DYNAMIXEL_LED, 1, OFF); // turn off LED    
    delay(100);
  }
}

int count = 0;
void loop()
{
  // ensure constant connection with RED
  if(roveCommCheck()) 
  {
    count = 0;
  }
  else
  {
    count++;
    //stop dynamixels if no comms
    if(count > TIMEOUT_TICKS)
    {
      if(USE_GIMB1)
      {
        moveDynamixel(gimb1_hor,  0);
        moveDynamixel(gimb1_vert, 0);
      }
      if(USE_GIMB2)
      {
        moveDynamixel(gimb2_hor,  0);
        moveDynamixel(gimb2_vert, 0);
      }
    }
    delay(1);
  }
}

boolean roveCommCheck()
{  
  roveComm_GetMsg(&dataID, &size, data);
  if(dataID==0) 
  {
    return false;
  }
  else
  {
    uint8_t tmp;
    int16_t xSpeed;
    int16_t ySpeed;
    char a[2];
    
    switch(dataID){
      case ID_GIMBAL1_SPEED:
        if(USE_GIMB1)
        {
          a[0] = data[0];
          a[1] = data[1];
          xSpeed = *(int16_t*)(a);
          
          a[0] = data[2];
          a[1] = data[3];
          ySpeed = *(int16_t*)(a);
    
          moveDynamixel(gimb1_hor,  xSpeed);
          moveDynamixel(gimb1_vert, ySpeed);
        }
        break;
  
      case ID_GIMBAL2_SPEED:
        if(USE_GIMB2)
        {
          a[0] = data[0];
          a[1] = data[1];
          xSpeed = *(int16_t*)(a);
          
          a[0] = data[2];
          a[1] = data[3];
          ySpeed = *(int16_t*)(a);
    
          moveDynamixel(gimb2_hor,  xSpeed);
          moveDynamixel(gimb2_vert, ySpeed);
        }
        break;
        
      case ID_DROP_BAY:
        tmp = *(uint8_t*)(data);
        openDropBay(tmp);
        break;
        
      case ID_CAMERA_MENU:
        tmp = *(uint8_t*)(data);
        if(tmp==0){
          toggleMenu();
        }
        else if(tmp==1){
          navigateMenuLeft();
        }
        else if(tmp==2){
          navigateMenuRight();
        }
        else if(tmp==3){
          navigateMenuUp();
        }
        else if(tmp==4){
          navigateMenuDown();
        }
        break;
    
      case ID_CAMERA_COMMAND:
        tmp = *(uint8_t*)(data);
        if(tmp==0){
          stopZoomAndFocus();
        }
        else if(tmp==1){
          zoomIn();
        }
        else if(tmp==2){
          zoomOut();
        }
        else if(tmp==3){
          focusIn();
        }
        else if(tmp==4){
          focusOut();
        }
        break;
    }
    return true;    
  }
}

void openDropBay(int bay){
  unsigned long time = millis();
  while(millis()<time+1000){
    Dropbay[bay].write(DROPBAY_ANGLE_OPEN);
    delay(1000);
  }
}

//moveSpeed: -1000 to 1000
void moveDynamixel(Dynamixel dyna, int moveSpeed){
  if(moveSpeed<0){
    moveSpeed = abs(moveSpeed)*1023/1000;
  }
  else{
    moveSpeed = moveSpeed*1023/1000+1024;
  }
  
  
  if(moveSpeed<0){
    moveSpeed=0;
  }
  if(moveSpeed>2047){
    moveSpeed=2047;
  }
  DynamixelSpinWheel(dyna,moveSpeed);
}

/// Camera Control
boolean active = false;
/*   CAMERA 1 CONTROLS   */
void zoomIn(){
  active=true;
  generateSignal(LONG_SIGNAL,PWM0);
}
void zoomOut(){
  active=true;
  generateSignal(SHORT_SIGNAL,PWM0);
}
void focusIn(){
  active=true;
  generateSignal(LONG_SIGNAL,PWM1);
}
void focusOut(){
  active=true;
  generateSignal(SHORT_SIGNAL,PWM1);
}
void stopZoomAndFocus(){
  if(!active)return;
  active=false;
  generateSignal(MID_SIGNAL,PWM0);
  generateSignal(MID_SIGNAL,PWM1);
}

void toggleMenu(){
  generateSignal(MID_SIGNAL,PWM2);
  generateSignal(LONG_SIGNAL,PWM2);
}
void navigateMenuLeft(){
  generateSignal(MID_SIGNAL,PWM1);
  generateSignal(SHORT_SIGNAL,PWM1);
}
void navigateMenuRight(){
  generateSignal(MID_SIGNAL,PWM1);
  generateSignal(LONG_SIGNAL,PWM1);
}
void navigateMenuUp(){
  generateSignal(MID_SIGNAL,PWM0);
  generateSignal(LONG_SIGNAL,PWM0);
}
void navigateMenuDown(){
  generateSignal(MID_SIGNAL,PWM0);
  generateSignal(SHORT_SIGNAL,PWM0);
}

void generateSignal(int amt, int pin){
  for(int i = 0; i < 5; i++){
    digitalWrite(pin,1);
    delayMicroseconds(amt);
    digitalWrite(pin,0);
    delayMicroseconds(20000-amt);
  }
}

