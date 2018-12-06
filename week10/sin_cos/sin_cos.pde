PVector position;
float theta =0;
int orbitSize = 100;

void setup(){
  background(0);
  size(700,700);
  position = new PVector(width/2,height/height);
  noStroke();
}

void draw(){
  theta += .1;
  //theta = framecount
  background(0);
  //orbit movement
  position.x = width/2 + cos(theta)* orbitSize;
  //position.y = height/2 + sin(theta)* orbitSize;
  //wave movement left to right
  //position.x ++;
  
  //wave movement top to bottom
  position.y ++;
  ellipse(position.x,position.y,50,50);
  //sent it back to top when it reaches the bottom
  if(position.y >= height){
    position.y = 0;
  }
}
