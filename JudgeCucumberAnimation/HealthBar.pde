class HealthBar {
  PVector size = new PVector(width/2, 20);
  PVector position = new PVector(width/2-size.x/2, height*0.02);
  
  void display() {
    rectMode(CORNER);
    fill(0,0,0, 150);
    noStroke();
    rect(position.x, position.y, size.x, size.y);
    
    float drawWidth = (judge.health/50) * size.x;
    println(judge.health);
    fill(255,0,0);
    noStroke();
    rect(position.x, position.y, drawWidth, size.y);
    
    noFill();
    stroke(0);
    strokeWeight(3);
    rect(position.x, position.y, size.x, size.y);
    
    damage();
  }
  
  void damage() {
    if(cucumber.position.x > (judge.position.x) - judge.size*judge.current.width/2 && cucumber.position.x < (judge.position.x) + judge.size*judge.current.width/2 && cucumber.position.y < (judge.position.y) + judge.size*judge.current.height/2 && cucumber.position.y > (judge.position.y) - judge.size*judge.current.height/2) {
      judge.health -= cucumber.damage;
    }
    if(judge.health <= 0) {
      gameOver = true;
    }
  }
}
