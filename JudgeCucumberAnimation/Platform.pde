class Platform {
  PImage sprite;
  PVector position;
  float size;
  boolean anim;
  
  Platform(PImage img, PVector pos, float s, boolean a) {
    sprite = img;
    position = pos;
    size = s;
    anim = a;
  }
  
  void display() {
    imageMode(CORNER);
    image(sprite, position.x, position.y, size*sprite.width, size*sprite.height);
  }
  
  void animate() {
    if(anim) {
    }
  }
}
