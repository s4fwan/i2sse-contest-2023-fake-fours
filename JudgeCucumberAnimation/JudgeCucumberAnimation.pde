import processing.sound.*;

//global variables
Subject judge;
Object cucumber;
Objective desk;
HealthBar health;
SoundFile bgMusic;

float gravity = 0.5; //
float ground;
int points;

PImage background;
PImage icon;
PImage gameOverImg;
boolean gameOver = false;

void settings() {
  //sets the window height to 1.5x monitor size, and makes it 16:9 aspect ratio
  size(int(displayWidth/1.5), int((displayWidth/1.5)/16*9));
  noSmooth(); //disables anti-aliasing (for pixel assets)
}

void setup() {
  //display window settings
  icon = loadImage("icon.png");
  background = loadImage("background.jpg");
  gameOverImg = loadImage("gameOver.jpg");
  surface.setTitle("Cucumber Justice");
  surface.setLocation(displayWidth/2-width/2, displayHeight/2-height/2);
  surface.setIcon(icon);
  background.resize(width, 0);
  gameOverImg.resize(width, 0);
  ground = height*8/9;
  
  //define judge of class Subject
  judge = new Subject(4, 13, 6); //animation speed, jump height, movement speed (these values can be played around with)
  
  judge.idle = loadImage("idle.png");
  judge.jump = loadImage("jump.png");
  judge.fall = loadImage("fall.png");
  judge.current = judge.idle;
  judge.running = new PImage[8];
  judge.sitting = new PImage[2];
  for(int i=0; i<judge.running.length; i++) {
    judge.running[i] = loadImage("run"+i+".png");
  }
  for(int i=0; i<judge.sitting.length; i++) {
    judge.sitting[i] = loadImage("sit"+i+".png");
  }

  judge.size = width/400;
  judge.position = new PVector((judge.size*judge.current.width)/2, ground);
  
  //cucumber
  cucumber = new Object(10, 6); //jump height, move speed
  cucumber.image = loadImage("cucumber_design.png");
  cucumber.size = width/500;
  cucumber.position = new PVector(width-cucumber.size*cucumber.image.width, ground);
  cucumber.velocity = new PVector(0, 0);
  
  //
  desk = new Objective(loadImage("desk.png"), width/400);
  health = new HealthBar();
  //
  presetSetup();
  frameRate(60);
  bgMusic = new SoundFile(this, "music.mp3");
  bgMusic.play();
}

void draw() {
  if(gameOver) {
    background(gameOverImg);
  }
  else {
    background(background);
    judge.update();
    judge.display();
    judge.animate();
    cucumber.update();
    cucumber.display();
    health.display();
    desk.logic();
  }
}

void keyPressed() {
  judge.move();
}

void keyReleased() {
  judge.stopMove();
}
