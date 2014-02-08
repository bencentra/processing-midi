// Include TheMidiBus library
import themidibus.*;

// Create a MidiBus object
MidiBus mb;

// Setup sketch
void setup() {
  size(400, 400);
  background(0,0,0);
  // List available MIDI inputs and outputs
  MidiBus.list();
  // Instantiate the MidiBus
  mb = new MidiBus(this, -1, "Virtual MIDI Bus");
}

// Draw loop
void draw() {
  println("Playing note");
  // Play a note on our 1st (and only) channel
  int channel = 1;
  int pitch = 60;
  int velocity = 127;
  mb.sendNoteOn(channel, pitch, velocity); 
  delay(500);
  mb.sendNoteOff(channel, pitch, velocity);
  delay(500);
}
