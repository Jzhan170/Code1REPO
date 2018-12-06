PImage img;
int pixelSize = 5;
int cols,rows;

void setup(){
  
  size(1080,1080,P3D);
  img = loadImage("k6.jpg");
  
  cols = width/pixelSize;
  rows = height/pixelSize;
  
}

void draw(){
  
  background(255);
  loadPixels();
  
    for(int i=0;i<cols; i ++){
      for(int j =0; j<rows; j++){
        int x = i*pixelSize + pixelSize/2;
        int y = j*pixelSize + pixelSize/2;
        
        int loc = x+y*width;
        color c = img.pixels[loc];
        
        float z = (mouseX/(float(width))) * brightness(img.pixels[loc]);
        fill(c);
        
        pushMatrix();
          translate(x,y,z);
          noStroke();
          rectMode(CENTER);
          rect(0,0,pixelSize,pixelSize);
        popMatrix();
      }
    }

}
