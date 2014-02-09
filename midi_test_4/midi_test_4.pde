// Include TheMidiBus library
import themidibus.*;

// Create a MidiBus object
MidiBus mb;

// Key sizes
int keyWidth = 60;
int keyHeight = 200;
int blackKeyWidth = 40;
int blackKeyHeight = 125;

// Arrays to hold keys
PianoKey[] keys = new PianoKey[13];
PianoKey[] blacks = new PianoKey[5];
PianoKey[] whites = new PianoKey[8];

// Delay between notes
int delay = 120;

// Setup sketch
void setup() {
  size(500, 350);
  background(0);
  drawPiano(60);
  // List available MIDI inputs and outputs
  //MidiBus.list();
  // Instantiate the MidiBus
  mb = new MidiBus(this, -1, "Virtual MIDI Bus");
}

// Draw loop
void draw() {
  
}

// Mouse Click
void mousePressed() {
  boolean played = false;
  // Check black keys first (since they're on top)
  for (int i = 0; i < blacks.length; i++) {
    PianoKey k = blacks[i];
    if ((mouseX > k.aX && mouseX < k.aX + k.aW) 
      && (mouseY > k.aY && mouseY < k.aY + k.aH)) {
      makeArpeggio(k.pitch, delay);  
      played = true; 
    }
  }  
  // Check white keys next
  for (int j = 0; j < whites.length; j++) {
    PianoKey k = whites[j];
    if ((mouseX > k.aX && mouseX < k.aX + k.aW) 
      && (mouseY > k.aY && mouseY < k.aY + k.aH)
      && !played) {
      makeArpeggio(k.pitch, delay);    
    }
  }
}

// Play a MIDI note
void sendMidiNote(int pitch, int delay) {
  mb.sendNoteOn(1, pitch, 127);
  delay(delay);
  mb.sendNoteOff(1, pitch, 127);
}

// Play a major arpeggio based on a starting pitch
void makeArpeggio(int start, int delay) {
  sendMidiNote(start, delay); // First
  sendMidiNote(start+4, delay); // Third
  sendMidiNote(start+7, delay); // Fifth
  sendMidiNote(start+12, delay); // Octave
}

// Draw the piano
void drawPiano(int startPitch) {
  int pos = -1;
  int b = 0;
  int w = 0;
  // Create all the key objects
  for (int i = 0; i < keys.length; i++) {
    if (i == 1 || i == 3 || i == 6 || i == 8 || i == 10) {
      // Black key...
      keys[i] = new BlackKey((keyWidth/2 + (keyWidth - blackKeyWidth)/2) + keyWidth*pos, 100, blackKeyWidth, blackKeyHeight, startPitch + i);
      blacks[b] = keys[i];
      b++;
    }
    else { 
      // White key...
      pos++;
      keys[i] = new WhiteKey(keyWidth*pos, 100, keyWidth, keyHeight, startPitch + i);
      whites[w] = keys[i];
      w++;
    }
  }
  // Draw the piano
  for (int x = 0; x < whites.length; x++) {
     whites[x].display(); 
  }
  for (int y = 0; y < blacks.length; y++) {
     blacks[y].display(); 
  }
}
