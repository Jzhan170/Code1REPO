int distance;
color bgColor;
boolean isCircleOn;
void setup() {
  size(600, 600);
}

void draw() {
  background(bgColor);
  if (distance< 100 && mousePressed) {
    bgColor = 255;
  } else {
    bgColor = 150;
  }
  
  if(isCircleOn == true){
    bgColor=255;
  }else {bgColor = 150;}
  
  ellipse(width/2, height/2, 200, 200);
}

void mousePressed(){
   if(distance<100){
     isCircleOn = !isCircleOn;
     println(isCircleOn);
   }
}
