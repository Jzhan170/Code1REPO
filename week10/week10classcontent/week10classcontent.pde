//float x, y;
PVector position;
int size = 100;
//float xSpeed, ySpeed;
PVector velocity;

void setup(){

   size(700,700);
   position = new PVector(width/2, height/2);
   velocity = new PVector(5,6);
}

void draw(){
  background(0);
  if(velocity.x == velocity.y){
  velocity.x = random(1,4);
  velocity.y = random(1,4);
  
  }
  
  ellipse(position.x,position.y,size,size);
  if(position.x>(width-size/2) || position.x<size/2){
    velocity.x = velocity.x *-1;
  }
  if(position.y>(height-size/2) || position.y<size/2){
    velocity.y = velocity.y *-1;
  }
 
  position.add(velocity);
  
}
