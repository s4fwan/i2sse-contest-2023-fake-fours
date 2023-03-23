int x = 145;
int y = 155; 
int a = 120;
int b = 30;
int c = 8;
void setup(){
  size(300,300); 
}

void draw(){
  background(255);
  ellipse(155,y,120,30); 
  fill(50,200,50); 
  y=y+c;
if(y>width-20 || y<20){
  c=-c;
}
if(y>height-10 || y<150){
  c=-c;
}
  
}
