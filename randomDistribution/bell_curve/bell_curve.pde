public void settings () {
  size(800,400);
  smooth();
} 

void draw() {
  background(255);
  float e = 2.71828183; //define e
  float[] heights = new float[width]; //create height array for y values
  float m = 0; //expected value, mean m is 0
  float sd = map(mouseX,0,width,0.4,2); //sd will be used as standard deviation, map scales mouseX value which is btw 0 and width to 0.4 and 2
  for(int i=0; i<heights.length;i++) {
    float xcoord = map(i,0,width,-3,3);
    float sq2pi = sqrt(2*PI);
    float xmsq = -1*(xcoord-m)*(xcoord-m);
    float sdsq = sd*sd; //variance
    heights[i] = (1/(sd*sq2pi))*(pow(e,xmsq/sdsq));
  }
  //
  stroke(0);
  strokeWeight(4);
  noFill();
  beginShape();
  for(int i =0; i<heights.length-1;i++) {
    float x = i;
    float y = map(heights[i],0,1,height-10,10);
    vertex(x,y);
  }
  endShape();
}
