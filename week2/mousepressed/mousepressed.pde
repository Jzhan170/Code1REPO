//boolean to detect if my mouse is pressed
//if boolean true, want to draw ellipse where mouseX + mouseY
//change size of my drawing ellipse when arrows clicks

int size;
int x, y;
color circleColor;
void setup(){
size(500, 500);
size = 10;
noStroke();
circleColor = color(random(0,255), random(0,255), random(0,255)); //(0, 100, 100);
}

void draw(){
 fill(0, 1);
 rect(0, 0, width, height);
 x = mouseX;
 y = mouseY;
 
 //happens continuously
 //if(mouseX>0 && mouseX<width/2 && mouseY>0 && mouseY<width/2){
   if(mousePressed){
     fill(circleColor);
     ellipse(x, y, size, size);
  }
 //}
}

//void mousePressed(){
// ellipse(x, y, size, size);
//}

void keyPressed(){
  if(key== CODED){
    if(keyCode == UP){
      size += 1;
      //size ++;
    } 
    if(keyCode == DOWN){
      size --;
    }
  }
}
