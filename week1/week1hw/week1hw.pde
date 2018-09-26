int bgColor = 198;

void setup(){
  //first parameter is width, second is heigh
  size(500,500);
  background(0, 0, 102);
  
  
}
int value = 255;


void draw(){
   //ellipse(x position, y position, width, height)
   //fill(255, 255, 255);
   
 
   fill(255, 204, 0);
   ellipse(250, 45, 100, 100);
   
   rectMode(CENTER);
   fill(value);
  
   rect(250, 350, 50, 200);
   
   fill(255, 0, 0);
   rect(250, 413, 5, 75);
   
   triangle(190,250, 250, 190, 310, 250);
   triangle(224, 370, 224, 449, 160, 449);
   triangle(340, 449, 276, 449, 276, 370);
   
}

void keyPressed() {
  if (value ==255){
    value = 0;
  }else {
    value = 255;
  }
  }
