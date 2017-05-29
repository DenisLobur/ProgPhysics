
float xoff = 0.0;
float increment = 0.01;
float zoff = 0.0;
float zincrement = 0.02;
float y;
float tx;
float ty;

void setup() {
  size(640, 360, P3D); 
  background(0);
}

void draw() {
  loadPixels();
  
  float xoff = 0.0;
  translate(width/2, height/2);
  rotateX(PI/3);
  for (int x = 0; x < width; x++) {
    xoff += increment;
    float yoff = 0.0;
    for (int y = 0; y < height; y++) {
      yoff += increment;
      float bright = map(noise(xoff, yoff, 5), 0, 1, 0, 255);
      pixels[x + y * width] = color(bright);
      yoff += 0.01;
    }
  }

  updatePixels();
  
  zoff += zincrement;
}