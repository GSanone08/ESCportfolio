//Gianna Sanone | April 17, 2023 | Etch-A-Sketch
int x, y;
PImage pic;

void setup() {
  size(800, 658);
  x = width/2;
  y = height/2;
  pic= loadImage ("Etch.png");
}

void draw() {
  image(pic, 0, 0);
  strokeWeight(2);
  fill(int(random(50,200)),int(random(50,200)),int(random(50,200)));
}

void mousePressed() { //Used for saving the image with saveFrame
  saveFrame("line=######.png");
}

void keyPressed() { //Used for drawing lines
  //background(#E54C4C);
  if (keyPressed) {
    if (key == 'w' || key == 'W') {
      moveLeft(7);
    } else if (key == 's' || key == 'S') {
      moveUp(7);
    } else if (key == 'a' || key == 'A') {
      moveDown(7);
    } else if (key == 'd' || key == 'D') {
      moveRight(7);
    }
  }
}

void moveRight(int rep) {
  for (int i=0; i<rep; i=i+1) {
    point(x+i, y);
  }
  x = x + rep;
}
void moveLeft(int rep) {
  for (int i=0; i<rep; i=i+1) {
    point(x-i, y);
  }
  x = x - rep;
}
  void moveUp(int rep) {
    for (int i=0; i<rep; i=i+1) {
    point(x, y-i);
    }
    y=y-rep;
}    
  void moveDown(int rep) {
    for (int i=0; i<rep; i=i+1) {
    point(x, y+i);
    }
    y=y+rep;
}
