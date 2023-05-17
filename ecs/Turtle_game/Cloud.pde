class Cloud {
  int x, y, time, cloud1;
  PImage c1;

  Cloud() {
    x = 350;
    y = 170;
    c1 = loadImage("cloud.png");
    c1 = loadImage("cloud.png");
  }

  void display() {
    imageMode(CENTER);
    c1.resize(70, 70);
    image(c1, x, y);
  }

  void move() {
    if (x<0) {
      x = width;
      y = int(random(height));
    }
      x = x - 5;
  }
}
