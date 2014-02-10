class Box {
  // XPos, yPos, width, height, fill, stroke
  int x, y, w, h, f, s;
  Box(int aX, int aY, int aW, int aH, int aF, int aS) {
    x = aX;
    y = aY;
    w = aW;
    h = aH;
    f = aF;
    s = aS;
  }
  void display() {
    stroke(s);
    fill(f);
    rect(x, y, w, h);
  } 
}
