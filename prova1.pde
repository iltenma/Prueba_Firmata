import cc.arduino.*;
import org.firmata.*;

serial myPort;
boolean led;
int led = 13;


void setup () {
  size(400,400); 
   myPort = new Serial(this, Serial.list()[0], 115200);
   led = false;
 
}

void draw () {
  if (mousePressed == true) 
 { 
   if(!led)
      myPort.write('1'); //send 1 (led ON)
   else
     myPort.write('0'); //send 0 (led OFF)
 
   led = led;
   println("SEND COMMAND!");
   delay(500);
  }
  
}