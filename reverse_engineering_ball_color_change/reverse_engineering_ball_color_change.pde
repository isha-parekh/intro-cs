int x=25;
int dx=3;
int y=25;
int dy=4;
int r;
int g;
int b;

void setup(){
  size(800,800);
  background(200);
}

void draw(){
  background(200);
  
  circle(x,y,50);
  fill(r,g,b);
  x=x+dx;
  y=y+dy;
  
  if(x>775){
  dx=-3;
  r= 50;
  b= 150;
  g=100;
  }
  if (x<25){
    dx=3;
    r=0;
    g=0;
    b=0;
  }
  if (y>775){
    dy=-4;
    r=300;
    g=100;
    b=255;
  }
  if (y<25){
    dy=4;
    r=100;
    g=300;
    b=150;
  }
  
}
