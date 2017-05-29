
float x;
float y;
float tx;
float ty;

void setup() {
  size(640, 360); 
  background(255);
  tx = 0;
  ty = 10000;
}

void draw() {
  float x = map(noise(tx), 0, 1, 0, width);
  float y = map(noise(ty), 0, 1, 0, height);
  tx += 0.01;
  ty += 0.01;
  ellipse(x, y, 16, 16);
}