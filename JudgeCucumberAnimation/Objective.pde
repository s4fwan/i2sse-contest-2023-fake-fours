class Objective {
  PImage sprite;
  PVector position;
  float size;
  float hp = 50;
  
  Objective(PImage img, float s) {
    sprite = img;
    size = s;
    position = new PVector(random(size*sprite.width/2, width-size*sprite.width/2), ground);
  }
  
  void display() {
    imageMode(CENTER);
    image(sprite,position.x, position.y-size*sprite.height/2, size*sprite.width, size*sprite.height);
    fill(255);
    textSize(width/20);
    text(points, width/30, height/10);
  }
  
  void progress() {
    rectMode(CENTER);
    fill(0,0,0, 150);
    noStroke();
    rect(position.x, position.y-size*sprite.height*2, size*sprite.width, size*sprite.width/10);
    
    float drawWidth = (hp/50) * size*sprite.width;
    fill(0,255,0);
    noStroke();
    rect(position.x, position.y-size*sprite.height*2, drawWidth, size*sprite.width/10);
    
    noFill();
    stroke(0);
    strokeWeight(3);
    rect(position.x, position.y-size*sprite.height*2, size*sprite.width, size*sprite.width/10);
  }
  
  void logic() {
    display();
    if(judge.position.x > position.x-size*sprite.width/2 && judge.position.x < position.x+size*sprite.width/8 && judge.velocity.y == 0) {
      progress();
      if(keyPressed && key == 's') {
        hp -= 1;
      }
    }
    if(hp<=0) {
      hp = 50;
      points+=1;
      position.x = random(size*sprite.width/2, width-size*sprite.width/2);
    }
  }
}
