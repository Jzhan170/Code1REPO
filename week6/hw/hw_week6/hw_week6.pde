String hello[] = {"hello.", "hello?", "hello!","hello~"};
int num= 50;
int c = 255;
int [] size = new int[num];
int [] xPos = new int[num];
int [] yPos = new int[num];

int [] Color = new int[c];

void setup(){
  background(255);
  size(800,800);
  
  float r = random(0,1);
  for (int i =0; i<1; i+=r){
    if (r>0 && r<0.25){
    i=0;
    }
    if (r>0.25 && r<0.5){
    i=1;
    }
    if (r>0.5 && r<0.75){
    i=2;
    }
    if (r>0.75 && r<1){
    i=3;
    }
    println(hello[i]);
  } 
  
  for(int i = 0; i<num; i++){
  
      xPos[i] = int(random(size[i]/2, width-size[i]/2));
      yPos[i] = int(random(size[i]/2, height-size[i]/2));
      
      size[i] = int(random(30,100));
      Color[i] = int(random(51,255));
      
      noStroke();
  }
  
}

  
void draw(){
  background(255);
  for(int i =0; i<num; i++){
    fill (Color[i]);
    ellipse(xPos[i], yPos[i], size[i], size[i]);
  }
}
