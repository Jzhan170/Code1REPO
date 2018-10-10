int num = 100;
int c = 255;
int [] size = new int[num];
int [] xPos = new int[num];
int [] yPos = new int[num];

int [] xSpeed = new int[num];
int [] ySpeed = new int[num];
int [] Color = new int[c];

int [] opacity = new int[num];

void setup(){
  size(800,800);
  for(int i = 0; i<num; i++){
    opacity[i] = 255;
    xPos[i] = int(random(size[i]/2, width-size[i]/2));
    yPos[i] = int(random(size[i]/2, height-size[i]/2));
    
    xSpeed[i] = int(random(1,5));
    ySpeed[i] = int(random(1,5));
    size[i] = int(random(20, 100));
    Color[i] = int(random(51,255));
    
    noStroke();
  }
  
}

void draw(){
 background(255);
 for(int i = 0; i<num; i++){
   xPos[i] = xPos[i] + xSpeed[i];
   yPos[i] = yPos[i] + ySpeed[i];
   fill (Color[i],opacity[i]);
   ellipse(xPos[i], yPos[i],size[i],size[i]);
   
   if(xPos[i] <= size[i]/2 || xPos[i] >=width-size[i]/2){
     xSpeed[i] = xSpeed[i] *-1;
   }
   if(yPos[i] <= size[i]/2 || yPos[i] >=height-size[i]/2){
     ySpeed[i] = ySpeed[i] *-1;
    }
    if(dist(mouseX, mouseY, xPos[i], yPos[i])<size[i]/2){
      opacity[i] = 0;
    }
    if(keyPressed){
      opacity[i] = 255;
    }
  }  
}
