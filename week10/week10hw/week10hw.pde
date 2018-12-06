ArrayList<Circles> circles;

color circleColor;
boolean isCircleOn;
int distance;
int Csize;
void setup(){
  size(900,900);
  background(255);
  
  circles = new ArrayList<Circles>();
  Csize = 70;
  noStroke();
}


  
void draw(){
  distance = int(dist(width/2,height/2,mouseX,mouseY));
  for(int i =0; i<circles.size(); i++){
    Circles c = circles.get(i);
    c.display();
    c.fall();
  }
  if(distance<Csize/2){
   circleColor = color(255);
   }else{circleColor= color(0);
     }
  fill(circleColor);
  ellipse(width/2,height/2,Csize,Csize);

}




void mousePressed(){
  if(distance<Csize/2){
  circles.add(new Circles());
  }
}
