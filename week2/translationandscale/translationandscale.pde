void setup(){

  size(500, 500);
  rectMode(CENTER);
}

void draw(){
  pushMatrix();
  println(mouseX);
  println(mouseY);
  background(150);
  fill(255);
  translate(width*.75, height*.75);
  rotate(radians(mouseX));
  rotate(radians(mouseY));
  rect(0, 0, 100, 100);
  fill(0);
  ellipse(0, 0, 50, 50);
  popMatrix();
  
  pushMatrix();
  //scale(2.0);
  println(mouseX);
  println(mouseY);
  
  fill(0);
  translate(width*.25, height*.25);
  rotate(radians(mouseX));
  rotate(radians(mouseY));
  rect(0, 0, 100, 100);
  fill(255);
  ellipse(0, 0, 50, 50);
  popMatrix();
  

 
}
