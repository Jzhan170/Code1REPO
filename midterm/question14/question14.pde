float x = 0; 
float y = 50;

void setup() {
  size(600, 600);
  background(230);
  rectMode(CENTER);
}

void draw() {
  pushMatrix();
  translate(x, y);
  rotate(radians(frameCount + x));
  stroke(0, 130);
  line(-50, 0, 50, 0);
  
  popMatrix();
  
  
  
  if (x <= width) {
    x++;
  }else{
  y=y+50;
  x =0;
  }
}
