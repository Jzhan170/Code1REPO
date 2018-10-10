void setup(){
  
 size(800, 800);
 
 noStroke();
}

void draw(){
  int numCircles = 10;
  
  int size = width/numCircles;
  
  background(255);
  
  for(int i = size/2; i<width; i+=width/numCircles){
    for(int j = size/2; j<height; j+=height/numCircles){
      
      float d = dist(mouseX, mouseY, i, j);
      
      float s = map(d, 0, width/2, 40, 60);
      println(s);
      float o = map(d, 0 , width, 255, 0);
      rectMode(CENTER);
      fill(o, o, o, o);
      rect(i, j, s, s);
    }
  }
}
