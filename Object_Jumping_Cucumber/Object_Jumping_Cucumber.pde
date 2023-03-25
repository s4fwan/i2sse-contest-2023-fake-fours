//Global Variables
int windowWidth;
int windowHeight;
PImage icon;

void settings() {
  windowWidth = displayWidth/2;
  windowHeight = displayHeight/2;
  //println(windowWidth);
  //println(windowHeight);
  size(windowWidth, windowHeight);
}

void setup() {
  icon = loadImage("cucumber_icon.png");
  surface.setTitle("Jumping Cucumber (◕‿◕)");
  surface.setResizable(true);
  surface.setLocation(displayWidth/2-width/2, displayHeight/2-height/2);
  surface.setIcon(icon);
  background(0);
}

void draw() {
  
}
