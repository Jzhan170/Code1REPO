float x,y,x1,y1,x2,y2, xPos, yPos;
float a = 50;
float b = 550;
float c = 50;
float d = 550;
String string1, string2;
color color1, color2, circleColor;

int circleSize;
int distance;

boolean isCircleOn;
boolean circlePressed;



void setup(){

  size(600, 600);
  string1 ="Nice";
  string2 ="Circle";
  textAlign(CENTER);
  x = width/2;
  y = height/2;
  xPos = width/2;
  yPos = height/2;
  color1 = color(255, 204, 229);
  color2 = color(255, 255, 255);
  
  circleSize = 100;
}

void returnAString(String string1, String string2){

  println(string1 + "\n" + string2);

}

void draw(){
  x1 = lerp(a, x, 0.5);
  x2 = lerp(x, b, 0.5);
  y1 = lerp(c, y, 0.3);
  y2 = lerp(y, d, 0.7);
  
  int bgColor;
  int green;
  int blue;
  bgColor = int(map(calcDist(x, y), 0, width, 0, 255));
  green = int(map(calcDist(x, y), 0, 128, 255, 149));
  blue = int(map(calcDist(x, y), 0, 204, 238, 255));
  
  returnAString("A Circle","A Circle Again");
  
  background(bgColor, green, blue);
  
  println(calcDist(x,y));
  
  println(string1 + "" + string2);
  fill(255);
  text(string1, x, height*.05);
  text(string2, x, height*0.95);
    
  fill(color1);
  ellipse(x, y, 300, 300);
  fill(color1);
  ellipse(x1, y1, 100, 100);
  fill(color1);
  ellipse(x2, y2, 100, 100);
  fill(color1);
  ellipse(x1, y2, 50, 50);
  ellipse(x2, y1, 70, 70);
  ellipse(x,y1, 40, 40);
  ellipse(x,y2, 20, 20);
  
  distance = int(dist(xPos, yPos, mouseX, mouseY));
  if( distance<circleSize/2){
    circleColor = color1;}else{
      circleColor = color(255,255,255);}
  
  fill(circleColor);
  ellipse(xPos,yPos,100,100);
}

void mousePressed(){
    if(distance<circleSize/2){
      isCircleOn = !isCircleOn;
      println(isCircleOn);}
   
    if(distance<circleSize/2){
      circlePressed = true; println(circlePressed);}
      else {circlePressed = false;}
    if(circlePressed == true){
      xPos = random(50, 550);
      yPos = random(50, 550);}
    }

float calcDist(float xPos, float yPos){
  float dist = dist(mouseX,mouseY, xPos, yPos);
  return dist;
}
