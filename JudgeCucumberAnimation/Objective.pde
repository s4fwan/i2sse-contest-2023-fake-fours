class Objective {
  PImage sprite;
  PVector position;
  float size;
  
  Objective(PImage img, PVector pos, float s) {
    sprite = img;
    position = pos;
    size = s;
  }
  
  void display() {
    imageMode(CENTER);
    image(sprite, position.x, position.y, size*sprite.width, size*sprite.height);
  }
}
