// Include TheMidiBus library
import themidibus.*;

// Create a MidiBus object
MidiBus mb;
boolean play = false;

// Last mouse coordinates
int lastX = 0;
int lastY = 0;

// Setup sketch
void setup() {
  size(400, 400);
  background(0);
  noStroke();
  // List available MIDI inputs and outputs
  //MidiBus.list();
  // Instantiate the MidiBus
  mb = new MidiBus(this, -1, "Virtual MIDI Bus");
}

// Draw loop
void draw() {
  // Determine the pitch based on the mouse position
  float p = 60; 
  float x = (float(mouseX) / width) * 20;
  float y = (float(mouseY) / height) * 20;
  int pitch = int(p + x + y);
  if ((mouseX != lastX || mouseY != lastY) && play) {
    mb.sendNoteOn(1, pitch, 127); 
    // Also draw something
    int red = int((float(mouseX)/width) * 255);
    int blue = int((float(mouseY)/height) * 255);
    int green = int(((float(mouseX)/width + float(mouseY)/height) / 2) * 255);
    fill(red, green, blue);
    ellipse(mouseX, mouseY, 25, 25);
  }
  lastX = mouseX;
  lastY = mouseY;
  // Delay .1 seconds to prevent madness
  delay(100);
}

// Toggle playing
void mousePressed() {
  play = !play; 
}
