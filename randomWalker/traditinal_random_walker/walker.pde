// Random walker class
class Walker {
  int x,y;
  
  // Constructor, starting point
  Walker() {
    x= width/2;
    y= width/2;
  }
  // Function, display
  void display() {
    stroke(0); // white
    point(x,y); // point at x,y coordination
  }
  //Function, taking step
  void step() {
    int choice = int(random(4));
    
    if (choice == 0) {
      x++;
    }
    else if (choice == 1) {
      x--;
    }
    else if (choice == 3) {
      y++;
    }
    else {
      y--;
    }
  } 
}
