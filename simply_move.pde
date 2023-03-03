void setup() {
  size(400, 400);
}

float x = 200;
float y = 200;

void draw() {
  background(255);
  ellipse(x, y, 50, 50);
}

void keyPressed() {
  if (keyCode == LEFT) {
    x -= 10;
  } else if (keyCode == RIGHT) {
    x += 10;
  } else if (keyCode == UP) {
    y -= 10;
  } else if (keyCode == DOWN) {
    y += 10;
  }
}
