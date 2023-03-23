PImage judge;
int judgeX = 200;
int judgeY = 0;

void setup() {
  size(400,400);
  judge = loadImage("judge1.png"); 
  imageMode(CENTER);
  
}

void draw() {
  background(0);
  image(judge, judgeX, judgeY);
  judgeY += 3;
  
  if(judgeY > height + 50) {
    judgeY = 0;
  }
}
