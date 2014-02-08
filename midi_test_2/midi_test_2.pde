// Include TheMidiBus library
import themidibus.*;

// Create a MidiBus object
MidiBus mb;

// MIDI notes params
int channel = 1;
int pitch = 60;
int velocity = 127;

// Setup sketch
void setup() {
  size(400, 400);
  background(0,0,0);
  fill(200, 0, 0);
  rect(0, 0, width/2, height/2);
  fill(200, 200, 0);
  rect(0, height/2, width/2, height/2);
  fill(0, 200, 0);
  rect(width/2, height/2, width/2, height/2);
  fill(0, 0, 200);
  rect(width/2, 0, width/2, height/2);
  // List available MIDI inputs and outputs
  //MidiBus.list();
  // Instantiate the MidiBus
  mb = new MidiBus(this, -1, "Virtual MIDI Bus");
}

// Draw loop
void draw() {
  // Set the pitch based on mouse position
  if (mouseX < width/2 && mouseY < height/2) {
    pitch = 60;
  }
  else if (mouseX < width/2 && mouseY > height/2) {
    pitch = 64; 
  }
  else if (mouseX > width/2 && mouseY > height/2) {
    pitch = 67; 
  }
  else {
    pitch = 72; 
  }
  println(pitch);
}

// Send a MIDI note on message
void mousePressed() {
  mb.sendNoteOn(channel, pitch, velocity); 
 
}

// Send a MIDI note off message
void mouseReleased() {
  mb.sendNoteOff(channel, pitch, velocity);
}
