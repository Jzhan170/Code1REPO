color bgColor;
float size;
void setup(){
  size(600,600);
  bgColor = color(204, 255, 255);
  noStroke();
}

void draw(){
  
  background(bgColor);
  
  
  for(int i = 0; i<= width; i +=40){
    int c = int(map(i, 0, width, 0, 255));
    size=int(map(i,0,width,100,40));
    fill(255, c, c);
    ellipse(i, height/2, size, size);
  }
}
