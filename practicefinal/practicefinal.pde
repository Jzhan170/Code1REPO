float x,y;
float theta;
float 
x1,y1;
void setup(){
  size(600,600);
}



void draw(){
  background(255);
  //x++;
  theta+=1;
  
  pushMatrix();
  
  
  translate(width/2,height/2);
  
  rotate(radians(theta));
  y=sin(theta/10)*25+200;
  ellipse(0,y,50,50);
  
  popMatrix();
  x1= cos(radians(theta))*100+width/2;
  y1= sin(radians(theta))*100+width/2;
  ellipse(x1,y1,30,30);
  
  ellipse(width/2,height/2,100,100);

}
