int x=20;
int y=20;
int dx=5;
int dy=5;

void setup(){
  size(500,500);
  background(200);
}

void draw(){
  background(200);
  
  circle(x,y,20);
  if (x==20 && y==20){
    dx=0;
    dy=5;
  }
  if (x==20 && y==480){
     dx=5;
  dy=0;
  }
  if(x==480 && y==480){
    dx=0;
    dy=-5;
  }
  if(x==480 && y==20){
    dx=-5;
    dy=0;
  }

  x=x+dx;
  y=y+dy;
}
