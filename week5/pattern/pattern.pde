void setup(){
  size(600, 600); 
  background(255); 
}

void draw(){
  textSize(15); 
  fill(0);  
  for(int i = 0; i<100; i++){
    for(int j = 0; j<100; j++){
      if(j % 2 == 0){
        text(">", i*15, j*15); 
      }else if(j % 3 == 0){
        text("|", i*15, j*15); 
      }else{
        text("<", i*15, j*15);
      }
    }
  }
}
