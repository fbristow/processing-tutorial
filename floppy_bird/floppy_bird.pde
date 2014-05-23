float y = 0;
float velocity = 1;
float gravity = .1;
int gapSize = 100;
float topSize;
float x = 300;

void setup() {
  size(300,300); 
  topSize = random(150);
}

void draw() {
  background(255);
  fill(175);
  //rectMode(CENTER);
  rect(150, y, 10, 10);
  rect(x, 0, 50, topSize);
  rect(x, topSize + gapSize, 50, 300);
  
  y = y + velocity;
  x = x - 1;
  velocity = velocity + gravity;
  
  if (y > height) {
    textSize(32);
    text("You Lose!", 150, 150);  // Default depth, no z-value specified
  }
  
  if ((y < topSize || y > topSize + gapSize) && x == 150) {
    textSize(32);
    text("You Lose!", 150, 150);  // Default depth, no z-value specified
      
  }

  if (x < 0) {
    x = width;
    topSize = random(150);
  }
}

void keyPressed() {
   switch (keyCode) {
    case 38:
      velocity = velocity * -0.90;
   } 
}
