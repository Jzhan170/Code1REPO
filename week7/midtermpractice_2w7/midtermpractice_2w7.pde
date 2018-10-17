//your rectangle should rotate and move across the screen from left to right
//currently it only rotates in place 
//change the sketch so that it draws from left to right, then down; change either the translate function or the conditional to do this.


float x = 0; 
float y =50;

void setup() {
  size(600, 600);
  background(255);
  rectMode(CENTER);
}

void draw() {
  pushMatrix();
  translate(x, y);
  rotate(radians(frameCount + y));
  stroke(0, 130);
  line(-50, 0, 50, 0);
  
  popMatrix();
  
 
  if(x <= width){
     //reset your x & y coordinates
     x++;
  }else{
  y=y+50;
  x =0;
  }
}
