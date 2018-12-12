
Candy[] myCandy = new Candy[30];
float x,x1,x2;
void setup(){
  size(800,700);
  noStroke();
  
  for(int i=0;i<30;i++){
    myCandy[i] = new Candy(random(0,width),random(0,100),color(random(200,255),random(200,255),random(200,255)));
  }
  
}

void draw(){
  background(204,255,255);
    fill(153,255,255);
    rectMode(CENTER);
    rect(width/2,height/2+15,width-50,150);
    fill(255);
    textSize(150);
    textAlign(CENTER, CENTER);
    text("C A T C H",width/2,height/2);
    for(int i=0;i<30;i++){
      
      myCandy[i].display();
      myCandy[i].fall();
      myCandy[i].gravity();
      myCandy[i].reset();
    
        
    }

   int size=200;
   for(int i =0; i<=width; i+=size)
  {
    fill(255);
    ellipse(i,20,size,size);
  }
   for(int i =0; i<=width; i+=size)
  {
    fill(255);
    ellipse(i-100,10,size,size);
  }
  for(int i =0; i<=width; i+=size)
  {
    fill(255,153,153);
    ellipse(i-100,height+20,size,size);
  }
  for(int i =0; i<=width; i+=size)
  {
    fill(255,204,204);
    ellipse(i,height+5,size,size);
  }
    rectMode(CENTER);
    fill(255,178,102);
    x = mouseX;
    rect(x,height-90,180,80);
    x1 = mouseX-100;
    rect(x1,height-110,40,40);
    x2 = mouseX+100;
    rect(x2,height-110,40,40);
    fill(0);
    ellipse(x1+30,height-50,40,40);
    ellipse(x2-30,height-50,40,40);
    fill(255);
    ellipse(x1+30,height-50,15,15);
    ellipse(x2-30,height-50,15,15);
    
    
}
