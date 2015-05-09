#include <SoftwareSerial.h>
#include <Adafruit_GPS.h>
#include <EasyTransfer.h>
#include "Arduino.h"
#include "Setup.h"

//create ET object
//EasyTransfer ET;

//gps sensor
SoftwareSerial gpsSerial(9, 10); // (Rx, Tx)
//SoftwareSerial moboSerial(0, 1); // (Rx=0, Tx=1) **Set to 0,1 for 32u4 **Not able to get HWSerial working

Adafruit_GPS GPS(&gpsSerial);

#define GPSECHO false //set to true if you want raw GPS data printed to serial monitor

#define data_delay 50  //milliseconds between data collection

GPS_Data gps_data;  //instantiate struct to contain all sensor data

//timer collecting raw GPS data once every millisecond
SIGNAL(TIMER0_COMPA_vect)
{
  char c = GPS.read();
  #ifdef UDR0
    if (GPSECHO)
      if (c) UDR0 = c;
      // writing direct to UDR0 is much much faster than Serial.print
      // but only one character can be written at a time.
  #endif
}


void setup()
{
  // Begin Serial monitor comm for debugging
  Serial.begin(115200);

  // Start GPS parse object
  GPS_setup(GPS, gps_data);

  // Begin mobo comm
  //moboSerial.begin(115200);

  delay(1000);
}

uint32_t timer = millis();

void loop()
{  
  // Parse raw GPS data to fill GPS vars
  if(GPS.newNMEAreceived())
  {
    if(!GPS.parse(GPS.lastNMEA()))
      return; //if fails to parse, go back to top of loop
  }

  //if millis or timer overflows, reset
  if(timer > millis())
    timer = millis();

  if(millis() - timer > data_delay)
  {
    timer = millis();

    // Fill gps_data struct with GPS data
    gps_data.fix = GPS.fix;
    if(GPS.fix)
    {
      gps_data.fixquality = GPS.fixquality;
      gps_data.satellites = GPS.satellites;
      gps_data.latitude_fixed = GPS.latitude_fixed;
      gps_data.longitude_fixed = GPS.longitude_fixed;
      gps_data.altitude = GPS.altitude;
      gps_data.speed = GPS.speed;
      gps_data.angle = GPS.angle;
    }
  }

  // Adjust latitude_fixed and longitude_fixed to reflect which hemisphere GPS is in (eliminates need for lat and lon)
  if(GPS.lat == 'S'){
    gps_data.latitude_fixed = -1*gps_data.latitude_fixed;
  }
  if(GPS.lon == 'W'){
    gps_data.longitude_fixed = -1*gps_data.longitude_fixed;
  }

   /* Print out for debugging
  Serial.print("fix = "); Serial.println(gps_data.fix);
  Serial.print("fixquality = "); Serial.println(gps_data.fixquality);
  Serial.print("satellites = "); Serial.println(gps_data.satellites);
  Serial.print("latitude_fixed = "); Serial.println(gps_data.latitude_fixed);
  Serial.print("longitude_fixed = "); Serial.println(gps_data.longitude_fixed);
  Serial.print("altitude = "); Serial.println(gps_data.altitude);
  Serial.print("speed = "); Serial.println(gps_data.speed);
  Serial.print("angle = "); Serial.println(gps_data.angle);
  Serial.println("------------------------------");

  delay(50); //*/

//    moboSerial.write(gps_data);
}
