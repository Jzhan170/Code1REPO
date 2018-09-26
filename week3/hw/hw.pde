int circleSize;
float xPos, yPos;
color circleColor, bgColor;
float x, y;
int size = 100;
float xSpeed, ySpeed;

boolean isCircleOn;
boolean circlePressed;

int distance;

void setup(){
  
  size (500,500);
  bgColor = color(255,230,234);
  background(bgColor);
  xSpeed = random(1,4);
  ySpeed = random(1,4);
  x = width/2;
  y = height/4;
  
  xPos = width/2;
  yPos = height/2;
  
  circleSize=100;
}

void draw(){
  
  println(mouseX);
  println(mouseY);
  
  distance = int(dist(xPos, yPos, mouseX, mouseY));
  background(bgColor);
  
  if(distance<circleSize/2){
    circleColor = color(128, 255, 255);
  }else{circleColor= color(255,230,234);}
  
  if(distance<circleSize/2 && mousePressed){
    bgColor=color(255,230,234);}else{bgColor = 100;}
    
  if(isCircleOn == true){
    bgColor = color(255,230,234);} else {bgColor = color(128, 255, 255);}
    
    fill(circleColor);
    ellipse(xPos, yPos, circleSize, circleSize);
  
  if(xSpeed == ySpeed){
  xSpeed = random(1,4);
  ySpeed = random(1,4);
  
  
  }
  
  ellipse(x,y,size,size);
  if(x>(width-size/2) || x<size/2){
    xSpeed = xSpeed *-1;
  }
  if(y>(height-size/2) || y<size/2){
    ySpeed = ySpeed *-1;
  }
 
  x = x+xSpeed;
  y = y+ySpeed;
  
  
  }


void mousePressed(){
  if(distance<circleSize/2){
    isCircleOn = !isCircleOn;
    println(isCircleOn);}
    
  if(distance<circleSize/2){
    circlePressed = true; println(circlePressed);}
    else {circlePressed = false;}
  if(circlePressed == true){
    xPos = random(50,450);
    yPos = random(50,450);
  }
    
}
