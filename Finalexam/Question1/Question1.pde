PVector pos, vel, accel; 
//Boolean isMoving;
void setup(){
  size(600, 600); 

  pos = new PVector(width/2, 25); 
  vel = new PVector(0,0);
  accel = new PVector(0,0.1);
  smooth(); 
}

void draw(){
  background(0); 

  ellipse(pos.x, pos.y, 25, 25); 

  if(pos.y <= height){
    pos.add(vel);
    vel.add(accel);
  }
  
  if(pos.y >= 600){
     pos.x=width/2;
     pos.y=0;
  }
}
