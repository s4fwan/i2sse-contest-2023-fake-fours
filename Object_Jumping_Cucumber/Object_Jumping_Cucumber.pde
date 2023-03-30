//global variables
int windowWidth;
int windowHeight;
PImage icon;
PImage cucumber;
int cucumberSize;
PVector cucumberPosition;
boolean jump;
float jumpingFactor;

void settings() {
  windowWidth = int(displayWidth/1.5);
  windowHeight = int(displayHeight/1.5);
  size(windowWidth, windowHeight);
}

void setup() {
  //program window settings
  icon = loadImage("cucumber_icon.png");
  surface.setTitle("Jumping Cucumber (◕‿◕)");
  surface.setLocation(displayWidth/2-width/2, displayHeight/2-height/2);
  surface.setIcon(icon);
  
  //define variables
  cucumber = loadImage("cucumber_design.png");
  cucumberSize = windowWidth/10;
  cucumberPosition = new PVector(cucumberSize/2, windowHeight/2);
  jumpingFactor = 1.2;
  jump = true;
  
  //other
  frameRate(60);
  imageMode(CENTER);
}

void draw() {
  background(0);
  image(cucumber, cucumberPosition.x, cucumberPosition.y, cucumberSize, cucumberSize);
  cucumberPosition.x += 2;
  if(cucumberPosition.x > windowWidth+(cucumberSize/2)) {
    cucumberPosition.x = -cucumberSize;
  }
  //jumpingCalc();
}

/**
 * Function calculates the y position of the cucumber
 * to make it 'jump'
 */
void jumpingCalc() {
  if(jump) { //calculates the jump
    
  }
  else { //calculates the fall
    
  }
}
