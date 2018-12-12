class Candy{

  PVector position;
  PVector velocity;
  PVector gravity;
  color c;
  float size;
  
  Candy(float _x,float _y, color _c ){
    
    position = new PVector(_x, _y);
    velocity = new PVector(0,random(1,3));
    gravity = new PVector(0,.1);
    c =_c;
  }
  
  void fall(){
    position.add(velocity);
  
  
  }
  
  void gravity(){
    velocity.add(gravity);
  
  }
 
  
  
  
  void display(){
    noStroke();
    //c = color(random(200,255),random(200,255),random(200,255));
    fill(c);
    size = 40;
    ellipse(position.x, position.y, size, size);
    triangle(position.x-10,position.y,position.x-30,position.y-15,position.x-30,position.y+15);
    triangle(position.x+10,position.y,position.x+30,position.y+15,position.x+30,position.y-15);
  }
  
  void reset(){
    if(position.y >= height){
      position = new PVector(random(0,width), random(0,100)); 
      velocity = new PVector(0,random(1,3));//also reset the velocity after reseting the position
    }
    
    
}

}
