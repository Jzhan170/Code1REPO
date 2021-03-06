void setup() {
  size(700,700);
  noStroke();
}

void draw() {
  background(255);
  
  //loop 36 times in x and y
  for (int i = 0; i <= width; i += width/35) {
    for (int j = 0; j <= height; j += height/35) {
      
      fill(0); 
      
      float d = dist(mouseX, mouseY, i, j); 
      
      if (d<=(width/35/2)){
        fill (255);
      }
      
      ellipse(i, j, width/35, height/35);
    }
  }
}
