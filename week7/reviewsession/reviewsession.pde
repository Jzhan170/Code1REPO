int r =0 ; 
void setup(){
  size(500, 500);
  rectMode(CENTER);
}

void draw(){
  background(0); 
  pushMatrix(); //stores new coordinate system
    translate(width/2, height/2);
  
    r++; 
    rotate(r/10);
    //rotate(frameCount/10); 
    rect(0, 0, 100, 100); 
    pushMatrix(); 
    translate(-50, -50); 
    rotate(frameCount/5); 
    rect(0, 0, 40, 40); 
      pushMatrix();
        translate(40, 40); 
        rotate(r/2); 
        ellipse(0, 0, 10, 10); 
      popMatrix(); 
    popMatrix(); 
  popMatrix(); //reset our coordinates
}
