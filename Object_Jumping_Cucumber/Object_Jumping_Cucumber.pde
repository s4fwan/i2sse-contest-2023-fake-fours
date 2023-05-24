class Object {
    PImage image;
    PVector position;
    float yDirection;
    boolean xDirection;
    PVector velocity;
    float jumpHeight;
    float moveSpeed;
    float size;
}

//global variables
Object cucumber; 

float oUp;
float oLeft;
float oRight;

PImage background;
PImage icon;
float gravity = 0.5;
float ground;

void settings() {
  size(int(displayWidth/1.5), int((displayWidth/1.5)/16*9));
}

void setup() {
  //program window settings
  icon = loadImage("cucumber_icon.png");
  surface.setTitle("Jumping Cucumber (◕‿◕)");
  surface.setLocation(displayWidth/2-width/2, displayHeight/2-height/2);
  surface.setIcon(icon);
  background = loadImage("background.jpg");
  background.resize(width, 0);
  
  //define cucumber object
  cucumber = new Object();
  cucumber.image = loadImage("cucumber_design.png");
  cucumber.size = width/10;
  ground = height/2+cucumber.size/2;
  cucumber.position = new PVector(cucumber.size/2+(width*0.025), ground);
  cucumber.yDirection = 1;
  cucumber.velocity = new PVector(0, 0);
  cucumber.jumpHeight = 10;
  cucumber.moveSpeed = 4;
 
  //other
  frameRate(60);
  imageMode(CENTER);
}

void draw() {
  background(background);
  updateCucumber();
  //line(100, ground, 500, ground);
}

void updateCucumber() {
  if(cucumber.xDirection) {
    oRight = -1;
    oLeft = 0;
  }
  else {
    oRight = 0;
    oLeft = 1;
  }
  
  //Gravity applied if above ground
  if(cucumber.position.y < ground) {
    cucumber.velocity.y += gravity;
  }
  else {
    cucumber.velocity.y = 0;
  }
  
  //If cucumber on ground and user clicks, upward velocity is jump speed
  if(cucumber.position.y >= ground && oUp != 0) {
    cucumber.velocity.y = -cucumber.jumpHeight;
  }
  
  cucumber.velocity.x = cucumber.moveSpeed * (oLeft+oRight);
  
  PVector nextPosition = new PVector(cucumber.position.x, cucumber.position.y);
  nextPosition.add(cucumber.velocity);
  println(cucumber.velocity);
  
  float offset = cucumber.size/2;
  if(nextPosition.x > (width-offset-(width*0.025))) {
    cucumber.xDirection = !cucumber.xDirection;
  }
  if(nextPosition.x < (0+offset+(width*0.025))) {
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
    oUp = -1;
  }
}

void mouseReleased() {
  if(mouseButton == LEFT) {
    oUp = 0;
  }
}
