class Ball{
  float x,y;
  float xSpeed,ySpeed;
  int size;
  int score;

  Ball(float _x, float _y){
    x = _x;
    y = _y;
    size = 50;
    xSpeed = random(5,10);
    ySpeed = random(5,10);
  }

  //bouce paddle
  void bounceP(){
    xSpeed *= -1.1;
    ySpeed *= 1.1;
    score++;
  }
  //bounce top and bottom
  void bounceY(){
    ySpeed = -ySpeed;
  
  }
  void bounceX(){
    xSpeed = -xSpeed;
  }
  //display
  void display(){
    fill(255);
    ellipse(x,y,size,size);
 
  }
  //move
  void move(){
  x += xSpeed;
  y += ySpeed;
  }
  //restart
    //reset ball
    //subtract score
  void reset(){
    x=width/2;
    y=height/2;
    xSpeed = random(5,10);
    ySpeed = random(5,10);
    score =0;
  }
}
