float cubeSize;
boolean up = true;
void setup() {
  size(600, 600, P3D);
  smooth();
  cubeSize = 40;
}

void draw() {
  //background(0);
  float step = radians(millis()/ 10);
   
  translate(mouseX, mouseY, 0);
  rotateY(step);
  rotateX(step);
  box(cubeSize);
  if (cubeSize > 100) {
    up = false;
  } else if (cubeSize < 40) {
    up = true; 
  }
  
  if (up) {
    cubeSize++;
  } else {
    cubeSize--;
  }
}
