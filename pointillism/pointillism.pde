PImage pic;
int step = 20;
boolean up = false;
void setup() {
  pic = loadImage("http://bobolink.cs.umanitoba.ca/~fbristow/processing/MaximumSatisfaction.jpg");
  size(pic.width, pic.height);
  smooth();
}

void draw() {
  background(0);
  //image(pic, 0, 0);
  for (int x = 0; x < pic.width; x+=step) {
    for (int y = 0; y < pic.height; y+=step){
      fill(pic.get(x, y));
      ellipse(x, y, step, step);
    }
  }
  
  if (step < 5) {
    up = true;
  } else if (step > 40) {
     up = false; 
  }
  
  if (up) {
     step++; 
  } else {
     step--; 
  }
}
