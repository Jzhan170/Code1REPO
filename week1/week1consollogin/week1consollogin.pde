int bgColor = 255; 
int bgColor2 = 100;
int treePosition;
int treeSize;
void setup(){
  //first parameter is width, second is heigh
   size(500, 500);
   background(bgColor); 
   
   treePosition = int(width*random(0,1));
   treeSize = int(width*.35);
   
   //prints to our console
   println(treePosition);
}

void draw(){
  //ellipse(x position, y position, width, height)
  //fill(0, 100, 100); 
  //ellipse(100, 100, 50, 50);
  
  //fill(100, 0, 0);from the center
  //rect(100, 100, 100, 50);
  //this draws our rectangle 
  rectMode(CENTER);
  fill(150, 100, 50);
  rect(treePosition, treePosition + 50, treeSize*.25, treeSize*1.25);
  
  fill(0, 150, 0);
  ellipse(treePosition, treePosition, treeSize, treeSize);
  
}
