//Gianna Sanone | April 26 2023 | Turtle Game
boolean play;
Turtle shelly;
Tree tree1;
Bird bird1;
Cloud cloud1;
int score,gameTime;
float treeDist, birdDist, cloudDist;

void setup() {
  size(900, 350);
  play = false;
  shelly = new Turtle();
  tree1 = new Tree();
  bird1 = new Bird();
  cloud1 = new Cloud();
  gameTime = 0;
}

void draw() {
  gameTime ++;
  println(treeDist);
  println(birdDist);
  println(cloudDist);
  if (!play) {
    startScreen();
  } else {
    treeDist= dist(shelly.x, shelly.y, tree1.x, tree1.y);
    birdDist= dist(shelly.x, shelly.y, bird1.x, bird1.y);
    cloudDist= dist(shelly.x, shelly.y, cloud1.x, cloud1.y); 
    background(#CE8713);
    infoPanel();
    shelly.display();
    tree1.display();
    tree1.move();
    tree1.move();
    bird1.display();
    bird1.move();
    bird1.move();
    cloud1.display();
    cloud1.move();
    cloud1.move();
    //shelly.move(mouseX, 200);
    if(treeDist<25){
      shelly.x = tree1.x;
      tree1.x = 170;
      gameOver();
    }
      //shelly.x = tree1.x;
      if(birdDist<10){
        shelly.x = bird1.x;
        bird1.x = width;
        gameOver();
      }
      if (cloudDist<25){
        shelly.x = cloud1.x;
        cloud1.x = width;
        gameOver();
    }
    if (shelly.y > height) {
      gameOver();
    }
  }
}

void keyPressed() {
  if (key == 'u') {
    shelly.move('u');
  } else if (key == 'd') {
    shelly.move('d');
  } else if (key == ' ') {
    play = true;
  }
}

void drawBackground() {
  background(#FFFFFF);
  line(0, 400, width, 100);
}

void startScreen() {
  background(#FFFFFF);
  fill(0);
  textSize(40);
  textAlign(CENTER);
  text("Welcome to Turtle Game", width/2, 100);
  text("By: Gianna Sanone", width/2, 150);
  text("Press space bar to start the game", width/2, 300);
}

void gameOver() {
  background(#FFFFFF);
  fill(0);
  textSize(40);
  textAlign(CENTER);
  text("Game Over", width/2, 150);
  text("Time:" + gameTime/30, width/2, 200);
  noLoop();
}

void infoPanel() {
  fill(#FFFFFF);
  rect(0, 0, width, 80);
  fill(0);
  text("Time:" + gameTime/30, 100,70);
}
