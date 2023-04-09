//global variables
int windowWidth;
int windowHeight;
PImage icon;
PImage cucumber;
int cucumberSize;
int cucumberX;
int cucumberY;
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
  cucumberX = cucumberSize/2;
  cucumberY = windowHeight/2;
  jumpingFactor = 1.2;
  jump = true;
  
  //other
  frameRate(60);
  imageMode(CENTER);
}

void draw() {
  background(0);
  //This snippet of code shows the image of the cucumber and the coordinates it starts at. The cucumber is then made to move across screen from left to right.
  //This is done by the use of an if statement, so when the cucumber leaves the screen on the right it loops back around the left (the beginning). 
  image(cucumber, cucumberX, cucumberY, cucumberSize, cucumberSize);
  cucumberX += 5;
  if(cucumberX > windowWidth+(cucumberSize/2)) {
    cucumberX = -cucumberSize;
  }
  //jumpingCalc();
}

/**
 * Function calculates the y position of the cucumber
 * to make it 'jump'
 */
void jumpingCalc() {
  if(jump) { //calculates the jump
    cucumberY -= int(2*jumpingFactor);
  }
  else { //calculates the fall
    
  }
}
