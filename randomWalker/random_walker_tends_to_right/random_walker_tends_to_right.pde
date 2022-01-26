// Random walker class
class Walker {
  int x,y;
  
  // Constructor, starting point
  Walker() {
    x= 10;
    y= width/2;
  }
  // Function, display
  void display() {
    stroke(0); // white
    point(x,y); // point at x,y coordination
  }
  //Function, taking step
  void step() {
  float r = random(1);
  if (r<0.4) {
    x++;
  }
  else if (r<0.6) {
    x--;
  }
  else if (r<0.8) {
    y++;
  }
  else {
    y--;
  }
}
}
