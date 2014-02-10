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

// Array to store Box objects
Box[] boxes = new Box[GRID_WIDTH * GRID_HEIGHT];

// Setup sketch
void setup() {
  size(400, 400);
  background(0,0,0);
  // Draw the grid of buttons
  color stroke = color(0,0,100);
  for (int i = 0; i < GRID_HEIGHT; i++) {
    for (int j = 0; j < GRID_WIDTH; j++) {
      color fill;
      if ((i+j) % 2 == 0) 
        fill = color(200,200,255);
      else 
        fill = color(100,100,255);
      Box box = new Box(j*BOX_WIDTH, i*BOX_HEIGHT, BOX_WIDTH, BOX_HEIGHT, fill, stroke);  
      boxes[(i+1)*j] = box;
      box.display();
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
