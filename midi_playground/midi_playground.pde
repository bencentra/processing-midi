// Include TheMidiBus library
import themidibus.*;

// Create some MidiBus objects
MidiBus mb1, mb2, mb3;

// MIDI notes params
int channel = 1;
int pitch = 60;
int velocity = 127;

// Grid properties
int GRID_WIDTH = 4;
int GRID_HEIGHT = 4;
int BOX_WIDTH = 100;
int BOX_HEIGHT = 100;

// Setup sketch
void setup() {
  size(400, 400);
  background(0,0,0);
  // Draw the grid of buttons
  stroke(0,0,100);
  for (int i = 0; i < GRID_HEIGHT; i++) {
    for (int j = 0; j < GRID_WIDTH; j++) {
      if ((i+j) % 2 == 0) 
        fill(200,200,255);
      else 
        fill(100,100,255);
      rect(j*BOX_WIDTH, i*BOX_HEIGHT, BOX_WIDTH, BOX_HEIGHT);  
    } 
  }
  
  // List available MIDI inputs and outputs
  MidiBus.list();
  // Instantiate the MidiBus
  mb1 = new MidiBus(this, -1, 1);
  mb2 = new MidiBus(this, -1, 2);
  mb3 = new MidiBus(this, -1, 3);
}

// Draw loop
void draw() {
  
}

// Send a MIDI note on message
void mousePressed() {
  
}

// Send a MIDI note off message
void mouseReleased() {
  
}
