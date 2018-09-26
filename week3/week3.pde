 
 int circleSize;
 int xPos, yPos;
 color circleColor, bgColor;
 
 boolean isCircleOn;
 
 int distance;
 
 void setup(){
 
   size (500,500);
   bgColor = color(255,255,255);
   background(bgColor);
   
   xPos = width/2;
   yPos = height/2;
   
   circleSize=100;
 }
 
 void draw(){
 
   distance = int(dist(xPos, yPos, mouseX, mouseY));
   background(bgColor);
 
 if(distance<circleSize/2){
   circleColor = color(128, 255, 255);
   }else{circleColor= color(255,230,234);
     }
 if(distance<circleSize/2 && mousePressed){
   bgColor=255;
   }else{bgColor = 100;
     }
   if(isCircleOn == true){
     bgColor = 255;
   }else {bgColor = 0;}
   
   
   fill(circleColor);
 ellipse(xPos, yPos, circleSize, circleSize);
 
 
 }
 
 void mousePressed(){
   if(distance<circleSize/2){
     isCircleOn = !isCircleOn;
     println(isCircleOn);
   }
 }
 
