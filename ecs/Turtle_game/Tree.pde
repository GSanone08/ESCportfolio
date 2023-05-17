class Tree {
  int x, y;
  PImage t1;

  Tree() {
    x = width;
    y = 300;
    t1 = loadImage("tree.png");
  }

  void display() {
    imageMode(CENTER);
    t1.resize(170, 170);
    image(t1, x, y);
  }

  void move() {
    if (x<0) {
      x = width;
    }
      x = x - 5;
  }
}
