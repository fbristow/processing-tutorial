void setup() {
  println("Hello, world!");
  int width = 600;
  int height = 600;
  size(width,height);
  stroke(#FF0000);
  background(#000000);
  /*	float limit = 100;
	float scale = 10;
	float translate = 300;
	float step = .001;
	for (float theta = 0; theta < limit; theta += step) {
		float r = scale * (theta / TWO_PI);
		float x = r * cos(theta) + translate;
		float y = r * sin(theta) + translate;
		point(x, y);
	}*/
}
void draw() {
  float theta = radians(millis() / 10);
  println("theta: " + theta + ", millis(): " + millis());
  float limit = 100;
	float scale = 100;
	float translate = 300;
  float r = scale * (2*sin(4*theta));//(theta / TWO_PI);
		float x = r * cos(theta) + translate;
		float y = r * sin(theta) + translate;
		point(x, y);
}
