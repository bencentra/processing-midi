// Include TheMidiBus library
import themidibus.*;

// Create a MidiBus object
MidiBus mb;

// Grid size
int keyWidth = 40;
int keyHeight = 160;
//int blackKeyWidth = 40;
int blackKeyHeight = 100;

// Setup sketch
void setup() {
  size(640, 480);
  background(0);
  stroke(0,0,0);
  // Draw White Keys
  for (int i = 0; i < 16; i++) {
    fill(255, 255, 255);
    rect(i * keyWidth, 300, keyWidth, keyHeight);
  }
  // Draw Black Keys
  for (int j = 0; j < 2; j++) {
    fill(25, 25, 25);
    stroke(255,255,255);
    int offset = keyWidth/2 + (width/2) * j;
    // Draw first two
    rect(offset + keyWidth * 0, 300, keyWidth, blackKeyHeight); 
    rect(offset + keyWidth * 1, 300, keyWidth, blackKeyHeight); 
    // Draw the next three
    rect(offset + keyWidth * 3, 300, keyWidth, blackKeyHeight);
    rect(offset + keyWidth * 4, 300, keyWidth, blackKeyHeight);
    rect(offset + keyWidth * 5, 300, keyWidth, blackKeyHeight);
  }
  // List available MIDI inputs and outputs
  //MidiBus.list();
  // Instantiate the MidiBus
  mb = new MidiBus(this, -1, "Virtual MIDI Bus");
}

// Draw loop
void draw() {
  
}
