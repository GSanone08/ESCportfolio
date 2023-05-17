class Turtle {
  int x, y;
  PImage f1;

  Turtle() {
    x = 250;
    y = 250;
    f1 = loadImage("turtle.png");
  }

  void display() {
    imageMode(CENTER);
    f1.resize(100,100);
    image(f1, x, y);
  }

  void move(char dir) {
    if (dir == 'u') {
      y = y - 10;
    } else if (dir == 'd') {
      y = y + 10;
    }
  }
}
