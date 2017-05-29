import java.util.Random;

class Walker {
  int x;
  int y;
  Random rand;

  Walker() {
    x = width/2;
    y = height/2;
    rand = new Random();
  }

  void display() {
    stroke(0);
    point(x, y);
  }

  void step() {
    float stepX = (float)rand.nextGaussian(); // using Gausian(normal) destribution
    float stepY = random(-1, 1);              // using random
    
    x += stepX;
    y += stepY;
    
  }
}