class Subject {
  PImage idle;
  PImage jump;
  PImage fall;
  PImage[] running;
  PImage current;
  int currentSprite;
  int counter;
  int animSpeed;
  PVector position;
  PVector velocity;
  float direction;
  float jumpHeight;
  float moveSpeed;
  float size;
}

//global variables

Subject judge;

float up;
float down;
float left;
float right;

float gravity = 0.5;
float ground;

PImage background;
PImage icon;

void settings() {
  size(int(displayWidth/1.5), int((displayWidth/1.5)/16*9));
  noSmooth();
}

void setup() {
  //program window settings
  icon = loadImage("icon.png");
  background = loadImage("background.jpg");
  surface.setTitle("Wandering Judge");
  surface.setLocation(displayWidth/2-width/2, displayHeight/2-height/2);
  surface.setIcon(icon);
  background.resize(width, 0);
  
  //define judge object
  judge = new Subject();
  judge.idle = loadImage("idle.png");
  judge.jump = loadImage("jump.png");
  judge.fall = loadImage("fall.png");
  judge.current = judge.idle;
  judge.currentSprite = -1;
  judge.counter = 0;
  judge.animSpeed = 4;
  
  judge.running = new PImage[8];
  for(int i=0; i<judge.running.length-1; i++) {
    judge.running[i] = loadImage("run"+i+".png");
  }
  
  judge.size = width/12;
  ground = height*8/9;
  judge.position = new PVector(judge.size/2+(width*0.025), ground);
  judge.direction = 1;
  judge.velocity = new PVector(0,0);
  judge.jumpHeight = 10;
  judge.moveSpeed = 6;
  
  //other
  frameRate(60);
  imageMode(CENTER);
}

void draw() {
  background(background);
  updateJudge();
  judgeAnimation();
}

void updateJudge() {
  if(judge.position.y < ground) {
    judge.velocity.y += gravity;
  }
  else {
    judge.velocity.y = 0;
  }
  
  if(judge.position.y >= ground && up!= 0) {
    judge.velocity.y = -judge.jumpHeight;
  }
  
  judge.velocity.x = judge.moveSpeed * (left+right);
  
  PVector nextPosition = new PVector(judge.position.x, judge.position.y);
  nextPosition.add(judge.velocity);
  //println(judge.velocity);
  
  float offset = 0;
  if(nextPosition.x > offset && nextPosition.x < (width-offset)) {
    judge.position.x = nextPosition.x;
  }
  if(nextPosition.y > offset && nextPosition.y < (height-offset)) {
    judge.position.y = nextPosition.y;
  }
  
  pushMatrix();
  
  translate(judge.position.x, judge.position.y);
  
  scale(judge.direction, 1);
  
  imageMode(CENTER);
  image(judge.current, 0, -judge.size/2, judge.size, judge.size);
  
  popMatrix();
}

void judgeAnimation() {
  if(keyPressed) {
    println(key);
    if(key=='a'&& judge.counter > judge.animSpeed) {
      if(judge.currentSprite>judge.running.length-3) {
        judge.currentSprite = -1;
      }
      judge.current = judge.running[judge.currentSprite+1];
      judge.currentSprite++;
    }
    if(key=='d'&& judge.counter > judge.animSpeed) {
      if(judge.currentSprite>judge.running.length-3) {
        judge.currentSprite = -1;
      }
      judge.current = judge.running[judge.currentSprite+1];
      judge.currentSprite++;
    }
  }
  if(!keyPressed && judge.velocity.y == 0) { 
    judge.current = judge.idle;
    judge.currentSprite = -1;
  }
  
  if(judge.velocity.y < 0) {
    judge.current = judge.jump;
  }
  else if(judge.velocity.y > 0) {
    judge.current = judge.fall;
  }
  else if(left == 0 && right == 0) {
    judge.current = judge.idle;
  }
  if(judge.counter > judge.animSpeed) judge.counter = 0;
  judge.counter++;
}

void keyPressed() {
  if (key == 'd') {
    right = 1;
    judge.direction = 1;
  }
  if (key == 'a') {
    left = -1;
    judge.direction = -1;
  }
  if (key == ' ') {
    up = -1;
  }
}

void keyReleased() {
  if (key == 'd') {
    right = 0;
  }
  if (key == 'a') {
    left = 0;
  }
  if (key == ' ') {
    up = 0;
  }
}
