Plant daryl;
Plant eugene;
Plant [] plants = new Plant[10];


void setup(){
  size(700,500);
  background(255);
  
  noStroke();
  for(int i =0; i<plants.length; i++){
    plants[i] = new Plant(int(random(100,width)));
  }
  
}

void draw(){
  
  
  for(int i =0; i<plants.length; i++){
   plants[i].display(2+i*3 ,2+i*3,color(255,i*20,50));
   plants[i].grow();
   
 }
}
