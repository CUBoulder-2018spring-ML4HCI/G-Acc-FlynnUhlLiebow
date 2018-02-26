import oscP5.*;
import netP5.*;
OscP5 oscP5;
NetAddress dest;
float p = .5;
float x, y, dx, dy;
float r = 10;

void setup() {
  size(1080,720);
  fill(0, 255, 0);
  reset();
  
  oscP5 = new OscP5(this,12000); //listen for OSC messages on port 12000 (Wekinator default)
  dest = new NetAddress("127.0.0.1",6448); //send messages back to Wekinator on port 6448, localhost (this machine) (default)
}


void reset() {
  x = width/2;
  y = height/2;
  dx = 0;
  dy = 0;
}

int z=0;
void draw() { 
  background(0);
  fill(0, 255, 0);
  if (p<.5){
    dx=-1;
  }
  else{
    dx=1;
  }
  x+=dx;
  ellipse(x, y, r, r);
  
}
void oscEvent(OscMessage theOscMessage) {
 if (theOscMessage.checkAddrPattern("/wek/outputs")==true) {
     if(theOscMessage.checkTypetag("f")) { //Now looking for 1 parameters
        p = theOscMessage.get(0).floatValue(); //get this parameter
        println("Received new params value from Wekinator");
      } else {
        println("Error: unexpected params type tag received by Processing");
      }
 }
}

void mousePressed() {
  reset();
}
