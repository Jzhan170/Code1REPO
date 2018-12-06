//player
//ball
//collision dection
//score
//lives
//timer

Paddle player1;
Ball ball;
PVector playerPos [] =new PVector[2];
int start;

void setup(){

  size(800,600);
  playerPos[0] =new PVector(width-10,height/2);
  player1 = new Paddle(playerPos[0]);
  ball = new Ball(width/2,height/2);
  start = millis();
  
}


void draw(){
  
  
  background(0);
  player1.update();
  player1.display();
  ball.display();
  ball.move();
  
  //if ball goes outside of y
  if(ball.y >height-ball.size/2 || ball.y<ball.size/2){
    ball.bounceY();
  }
  if(ball.x <= ball.size/2){
    ball.bounceX();
  }
  
  if(ball.x >=width-ball.size/2){
    start=millis();
    ball.reset();
  }
  
  //check if the ball is within the boundray of paddle
  if(ball.x >= player1.position.x-(5+ball.size/2) && ball.y >= player1.position.y-player1.rectSize/2 &&  ball.y <= player1.position.y + player1.rectSize/2){
    ball.bounceP();
  
  }
  fill(255);
  textSize(32);
  text("Score:"+ball.score,300,50);
  int timer = millis()-start;
  textSize(32);
  text("Timer:"+timer/1000,100,50);
}
