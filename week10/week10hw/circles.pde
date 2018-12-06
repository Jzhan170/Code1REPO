class Circles{

  PVector position;
  PVector velocity;
  
  color c;
  
   

  Circles(){
    
    position = new PVector(mouseX,mouseY);
    velocity = new PVector(random(-5,5),random(-5,5));
  }
  
  void fall(){
    position.add(velocity);
  }

  void display(){
    noStroke();
    c = color(map(position.x,0,width,0,255),map(position.y,0,width,200,255),220);
    fill(c);
    ellipse(position.x,position.y,50,50);
  }


}
