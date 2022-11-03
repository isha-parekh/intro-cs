int x=25;
int dx=3;
int y=25;
int dy=4;
int paddleY=50;
int paddleX=30;

void setup(){
  size(1000,1000);
  background(200);
}

void draw(){
  background(200);
  
  circle(x,y,50);
  rect(paddleX, paddleY, 20, 80);
  x=x+dx;
  y=y+dy;
  if(x>975){
  dx=-3;
  }
  if (x<25){
    dx=3;
  }
  if (y>975){
    dy=-4;
  }
  if (y<25){
    dy=4;
  }
  if (y==paddleY){
    dy=4;
  }
  if (x==paddleX){
    dx=3;
  }
  
}

void keyPressed() {
  if (keyCode== DOWN){
    paddleY= paddleY-20;
  }
  if (keyCode==UP) {
    paddleY= paddleY+20;
  }
}
