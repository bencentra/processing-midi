// White Piano Key class
class WhiteKey extends PianoKey {
   WhiteKey(int x, int y, int w, int h, int p) {
     super(x, y, w, h, p); 
   }
   void display() {
     stroke(0, 0, 0);
     fill(255, 255, 255);
     rect(aX, aY, aW, aH);
   }
}
