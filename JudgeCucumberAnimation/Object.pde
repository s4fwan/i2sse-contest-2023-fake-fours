float oUp;
float oLeft;
float oRight;

class Object {
    PImage image;
    PVector position;
    boolean xDirection = true;
    PVector velocity;
    float jumpHeight;
    float moveSpeed;
    float size;
    int counter = 0;
    float damage = 1;
    
    Object(float jHeight, float mSpeed) {
      jumpHeight = jHeight;
      moveSpeed = mSpeed;
    }
    
    void update() {
      if(xDirection) {
        oRight = -1;
        oLeft = 0;
      }
      else {
        oRight = 0;
        oLeft = 1;
      }
      
      //Gravity applied if above ground
      if(position.y < ground) {
        velocity.y += gravity;
      }
      else {
        velocity.y = 0;
      }
      
      //If cucumber on ground and user clicks, upward velocity is jump speed
      if(position.y >= ground && oUp != 0) {
        velocity.y = -jumpHeight;
      }
      
      velocity.x = moveSpeed * (oLeft+oRight);
      
      PVector nextPosition = new PVector(position.x, position.y);
      nextPosition.add(velocity);
      
      float offset =( size*image.width)/2;
      if(nextPosition.x > (width-offset)) {
        xDirection = !xDirection;
      }
      if(nextPosition.x < offset) {
        xDirection = !xDirection;
      }
      position.x = nextPosition.x;
      if(nextPosition.y > offset && nextPosition.y < (height-offset)) {
        position.y = nextPosition.y;
      }
      jumpAI();
    }
    
    void display() {
      pushMatrix();
      translate(position.x, position.y);
      imageMode(CENTER);
      image(image, 0, -(size*image.height)/2, size*image.width, size*image.height);
      popMatrix();
    }
    
    void jumpAI() {
      oUp = 0;
      int roll = int(random(0,1.9));
      if(roll == 0 && counter > 20) {
        oUp = -1;
      }      
      if(counter > 20) {
        counter = 0;
      }
      counter++;
    }
}
