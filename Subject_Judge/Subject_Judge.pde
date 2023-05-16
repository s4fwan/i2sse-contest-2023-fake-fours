class Subject {
  PImage idle;
  PImage jump;
  PImage fall;
  PImage[] running;
  PVector position;
  PVector velocity;
  float direction;
  float jumpSpeed;
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
}

void setup() {
  //program window settings
  icon = loadImage("icon.png");
  background = loadImage("background.jpg");
  surface.setTitle("Wandering Judge");
  surface.setLocation(displayWidth/2-width/2, displayHeight/2-height/2);
  surface.setIcon(icon);
  background.resize(width, 0);
}
