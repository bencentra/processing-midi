// Piano Key class
class PianoKey {
   // xPos, yPos, width, height, pitch
   int aX, aY, aW, aH, pitch;
   // Constructor
   PianoKey(int x, int y, int w, int h, int p) {
     aX = x;
     aY = y;
     aW = w;
     aH = h;
     pitch = p;
   }
   void display() {
     // Override me... 
   }
}
