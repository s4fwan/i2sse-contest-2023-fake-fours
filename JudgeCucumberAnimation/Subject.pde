float sUp;
float sLeft;
float sRight;

class Subject {
  PImage idle;
  PImage jump;
  PImage fall;
  PImage[] running;
  PImage[] sitting;
  PImage current;
  int currentSprite = -1;
  int counter = 0;
  int animSpeed;
  PVector position;
  PVector velocity = new PVector(0,0);
  float direction = 1;
  float jumpHeight;
  float moveSpeed;
  float size;
  float health = 50;
  
  Subject(int aSpeed, float jHeight, float mSpeed) {
    animSpeed = aSpeed;
    jumpHeight = jHeight;
    moveSpeed = mSpeed;
  }
  
  void update() {     
    if(position.y < ground) {
      velocity.y += gravity;
    }
    else {
      velocity.y = 0;
    }
    
    if(position.y >= ground && sUp!= 0) {
      velocity.y = -jumpHeight;
    }
    
    velocity.x = moveSpeed * (sLeft+sRight);
    
    PVector nextPosition = new PVector(position.x, position.y);
    nextPosition.add(velocity);
    
    float offset = 0;
    if(nextPosition.x > offset && nextPosition.x < (width-offset)) {
      position.x = nextPosition.x;
    }
    if(nextPosition.y > offset && nextPosition.y < (height-offset)) {
      position.y = nextPosition.y;
    }
  }
  
  void display() {
    pushMatrix();
    translate(position.x, position.y);
    scale(direction, 1);
    imageMode(CENTER);
    image(current, 0, -(size*current.height)/2, size*current.width, size*current.height);
    popMatrix();
  }
  
  void animate() {
    if(keyPressed) {
      if(key=='a'&& counter > animSpeed) {
        if(currentSprite>running.length-2) {
          currentSprite = -1;
        }
        current = running[currentSprite+1];
        currentSprite++;
      }
      if(key=='d'&& counter > animSpeed) {
        if(currentSprite>running.length-2) {
          currentSprite = -1;
        }
        current = running[currentSprite+1];
        currentSprite++;
      }
      if(key=='s'&& counter > animSpeed) {
        if(currentSprite>sitting.length-2) {
          currentSprite = -1;
        }
        current = sitting[currentSprite+1];
        currentSprite++;
      }
    }
    if(!keyPressed && velocity.y == 0) { 
      current = idle;
      currentSprite = -1;
    }
    
    if(velocity.y < 0) {
      current = jump;
    }
    else if(velocity.y > 0) {
      current = fall;
    }
    else if(sLeft == 0 && sRight == 0 && !keyPressed) {
      current = idle;
    }
    if(counter > animSpeed) counter = 0;
    counter++;
  }
  
  void move() {
    if(key == 'd') {
      sRight = 1;
      direction = 1;
    }
    if(key == 'a') {
      sLeft = -1;
      direction = -1;
    }
    if(key == 'w' || key == ' ') {
      sUp = -1;
    }
  }
  
  void stopMove() {
    if(key == 'd') {
      sRight = 0;
    }
    if(key == 'a') {
      sLeft = 0;
    }
    if(key == 'w' || key == ' ') {
      sUp = 0;
    }
  }
}
