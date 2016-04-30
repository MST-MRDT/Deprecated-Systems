int sensorPin = A0;    // select the input pin for the potentiometer
float sensorValue = 0;  // variable to store the value coming from the sensor
 
void setup() {
  // declare the ledPin as an OUTPUT:
   Serial.begin(9600);  
}
 
void loop() {
  // read the value from the sensor:
  sensorValue = analogRead(sensorPin)*1.15;      
  delay(1000);  
  Serial.println(sensorValue);                   
}
