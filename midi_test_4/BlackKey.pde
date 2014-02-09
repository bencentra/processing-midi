// Black Piano Key class
class BlackKey extends PianoKey {
   BlackKey(int x, int y, int w, int h, int p) {
     super(x, y, w, h, p); 
   }
   void display() {
     stroke(255, 255, 255);
     fill(25, 25, 25);
     rect(aX, aY, aW, aH);
   }
}
