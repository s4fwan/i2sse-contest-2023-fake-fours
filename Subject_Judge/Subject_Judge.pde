  //global variables
int windowWidth;
int windowHeight;
PImage icon;
PImage judge;
int judgeSize;
int judgeX;
int judgeY;

void settings() {
  windowWidth = int(displayWidth/1.5);
  windowHeight = int(displayHeight/1.5);
  size(windowWidth, windowHeight);
}

void setup() {
  //program window settings
  //icon = loadImage("");
  surface.setTitle("Judge");
  surface.setLocation(displayWidth/2-width/2, displayHeight/2-height/2);
  //surface.setIcon(icon);
  
  //define variables
  judge = loadImage("judge1.png");
  judgeSize = windowWidth/10;
  judgeX = judgeSize/2;
  judgeY = windowHeight/2;
  
  //other
  frameRate(60);
  imageMode(CENTER);
}

void draw() {
  background(0);
  image(judge, judgeX, judgeY, judgeSize, judgeSize);
  judgeY += 3;
  
  if(judgeY > height + 51) { // meaning if the judge goes past the y axis by 50 pixels it will reapper at 0
    judgeY = 0;
  }
}
