class Object {
    PImage image;
    PVector position;
    float yDirection;
    boolean xDirection;
    PVector velocity;
    float jumpSpeed;
    float moveSpeed;
    float size;
}

//global variables
Object cucumber; 

float up;
float down;
float left;
float right;

PImage icon;
float gravity = 0.5;
float ground;

void settings() {
  size(int(displayWidth/1.5), int(displayHeight/1.5));
}

void setup() {
  //program window settings
  icon = loadImage("cucumber_icon.png");
  surface.setTitle("Jumping Cucumber (◕‿◕)");
  surface.setLocation(displayWidth/2-width/2, displayHeight/2-height/2);
  surface.setIcon(icon);
  
  //define cucumber object
  cucumber = new Object();
  cucumber.image = loadImage("cucumber_design.png");
  cucumber.size = width/10;
  ground = height/2+cucumber.size/2;
  cucumber.position = new PVector(cucumber.size/2, ground);
  cucumber.yDirection = 1;
  cucumber.velocity = new PVector(0, 0);
  cucumber.jumpSpeed = 10;
  cucumber.moveSpeed = 4;
 
  //other
  frameRate(60);
  imageMode(CENTER);
}

void draw() {
  background(0);
  updateCucumber();
}

void updateCucumber() {
  //image(cucumber.image, cucumber.position.x, cucumber.position.y, cucumber.size, cucumber.size);
 
  if(cucumber.xDirection) {
    right = -1;
    left = 0;
  }
  else {
    right = 0;
    left = 1;
  }
  
  //Gravity applied if above ground
  if(cucumber.position.y < ground) {
    cucumber.velocity.y += gravity;
  }
  else {
    cucumber.velocity.y = 0;
  }
  
  //If cucumber on ground and user clicks, upward velocity is jump speed
  if(cucumber.position.y >= ground && up != 0) {
    cucumber.velocity.y = -cucumber.jumpSpeed;
  }
  
  cucumber.velocity.x = cucumber.moveSpeed * (left+right);
  
  PVector nextPosition = new PVector(cucumber.position.x, cucumber.position.y);
  nextPosition.add(cucumber.velocity);
  println(cucumber.velocity);
  
  float offset = cucumber.size/2;
  if(nextPosition.x > (width-offset)) {
    cucumber.xDirection = !cucumber.xDirection;
  }
  if(nextPosition.x < (0+offset)) {
    cucumber.xDirection = !cucumber.xDirection;
  }
  cucumber.position.x = nextPosition.x;
  if(nextPosition.y > offset && nextPosition.y < (height-offset)) {
    cucumber.position.y = nextPosition.y;
  }
  
  pushMatrix();
  
  translate(cucumber.position.x, cucumber.position.y);
  
  imageMode(CENTER);
  image(cucumber.image, 0, 0, cucumber.size, cucumber.size);
  
  popMatrix();
}

void mousePressed() {
  if(mouseButton == LEFT) {
    up = -1;
  }
}

void mouseReleased() {
  if(mouseButton == LEFT) {
    up = 0;
  }
}
