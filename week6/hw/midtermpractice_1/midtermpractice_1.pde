//change this sketch so it rotates around the original position of the shape 

void setup() {
  size(600, 600); 
  rectMode(CENTER); 
  noStroke();
}

void draw(){
  background(0);
  rect(width/2, height/2, 100, 100); 
  translate(width/2, height/2);
  pushMatrix(); 
  rotate(radians(mouseY)); 
  rect(0, 0, 100, 100); 
  popMatrix(); 
}
