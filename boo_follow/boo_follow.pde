float x, y;
float step = 1;
PImage boo, boo2;
int score = 0;
float targetX, targetY;

void setup() {
  size(600,600);
  //frameRate(20);
  x = 300;
  y = 300;
  
  targetX = random(600);
  targetY = random(600);
  
  boo = loadImage("https://raw.githubusercontent.com/fbristow/processing-tutorial/master/images/AwesomeBoo.png");
  boo2 = loadImage("https://raw.githubusercontent.com/fbristow/processing-tutorial/master/images/AwesomeBooReverse.png");
}

void draw() {
  background(0);
  text("Score: " + score, 10, 30);
  //text("X: " + x + ", Y: " + y + "\nX: " + targetX + ", Y: " + targetY, 40, 40);
  float oldX = x;
  
  if (mouseX != x) {
    if (mouseX < x) {
      x -= step;
    } else {
      x += step;
    }
  }
  
  if (mouseY != y) {
    if (mouseY < y) {
      y -= step;
    } else {
      y += step;
    }
  }
  
  if (around(x, targetX, 50) && around(y, targetY, 50)) {
    score++;
    targetX = random(600);
    targetY = random(600);
  }
  
  ellipse(targetX, targetY, 50, 50);
  
  if (x - oldX < 0) {
    image(boo, x, y, 50, 50);
  } else {
    image(boo2, x, y, 50, 50);
  }
}

boolean around(float subject, float target, float range) {
   return subject > target - range && subject < target + range; 
}
