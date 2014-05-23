int width = 500;
int height = 500;

float x;
float z;
 
void setup() {
  background(0);
  smooth();
  size(width, height, P3D);
}
 
void draw(){
  float step = radians(millis() / 10);
  background(0);
  fill(204,012,0);
  
  translate(width / 2, height / 2);
  
  //stroke(255);
  for (int i = 0; i < width; i+= width / 10) {
    rotateY(step);
    rotateX(step);
    translate(width / 10, 0);

    box(10);
  }
}
