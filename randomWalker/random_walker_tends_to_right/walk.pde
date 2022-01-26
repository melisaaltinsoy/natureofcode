Walker w;

public void settings() {
  size(640, 640);
}
void setup() {
  background(255);
  w = new Walker();
}
void draw() {
  w.step();
  w.display();
}
