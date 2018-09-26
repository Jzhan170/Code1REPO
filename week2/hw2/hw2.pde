int bgColor = 198;

void setup(){
size(500, 500);
background(bgColor);
}
int value = 255;
int value1 = 0;
int value2 = bgColor;
void draw(){

rectMode(CENTER);
fill(value);

rect(250, 250, 300, 300);


fill(value1);
rect(170, 170, 70, 70);

fill(value1);
rect(170, 60, 80, 80);

fill(value1);
rect(330, 170, 70, 70);

fill(value1);
rect(330, 60, 80, 80);

fill(value);
ellipse(170, 170, 40, 40);
ellipse(330, 170, 40, 40);

fill(value1);
triangle(190,300, 250, 240, 310, 300);


}

void keyPressed(){
  if (value ==255){
    value = 0;
  }else {
    value = 255;
  }
  
  if (value1 ==0){
    value1 = 255;
  }else { value1= 0;}
 
  if (value2 ==bgColor){
    value2 = 0;
  }else {value2 = bgColor;}
}
