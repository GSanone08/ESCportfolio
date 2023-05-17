class Bird {
  int x, y, time, bird1;
  PImage b1;

  Bird() {
    x = width;
    y = 200;
    b1 = loadImage("bird.png");
    b1 = loadImage("bird.png");
  }

  void display() {
    imageMode(CENTER);
    b1.resize(100, 100);
    image(b1, x, y);
  }

  void move() {
    if (x<0) {
      x = width;
      y = int(random(height));
    }
      x = x - 5;
  }
}
