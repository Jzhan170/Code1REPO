int num = 10;
int size;
int speed[][] = new int [num][num];
boolean clicked[][]= new boolean[num][num];
color gridC[][] = new color[num][num];

void setup(){

  size(500,500);
  size = width/num;
  
  for(int i =num-1; i>-1; i--){
    for(int j =num-1; j>-1; j--){
      
      gridC[i][j]= color(random(200,255), random(205,255), random(255,255));
      speed[i][j]=0;
      clicked[i][j]=false;
    }
  } 
  noStroke();
  
}


void draw(){
  background(0);
  for(int i = num-1; i>-1; i--){
    for(int j = num-1; j>-1; j--){
      fill(gridC[i][j]);
      if(mouseX>i*size && mouseX<=(i+1)*size && mouseY>j*size && mouseY<=(j+1)*size && mousePressed)
      println("i is:"+i+"j is:"+j);
      if(clicked[i][j] == true){
        speed[i][j] += 10;
      }
      rect(i*size, j*size + speed[i][j], size, size);
    }
  }
}

void mousePressed(){
  
  for(int i =num-1; i>-1; i--){
    for(int j =num-1; j>-1; j--){
      if(mouseX>i*size && mouseX<=(i+1)*size && mouseY>j*size && mouseY<=(j+1)*size){
      println("i is:"+i+"j is:"+j);
      gridC[i][j]= color(random(200,255), random(205,255), random(255,255));
      clicked[i][j] = true;
      }
    }
  }
}
