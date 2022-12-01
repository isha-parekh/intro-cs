int x;
int y;
int r;
int g;
int b;
void setup() {
  size(500,500);
}

void draw() {
  x= (int) random(500);
  y= (int) random(500);
  if (x<=250 && y<=250){
    r= 255;
    g= 0;
    b= 0;
  }
  else if(x>=250 && y<=250) {
    r=0;
    g=255;
    b=0;
  }
  else if(x<=250 && y>=250){
    r=255;
    g=255;
    b=0;
  }
  else{
    r=0;
    g=255;
    b=255;
  }
  fill(r, g, b);
  circle(x,y,25);
  
}
