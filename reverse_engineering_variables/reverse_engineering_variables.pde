int x=0;
float y=0;
float a=300;
int b=400;



void setup() {
  size(1000,1000);
}

void draw(){
  background(100);
  fill(255,0,0,x);
  circle(500,500,300);
  x=x+1;
  fill(255,255,255);
  triangle(0,0,b,50,0,100);
  b=b+2;
  square(0,0,a);
  a=a-2.5;
  square(600, y, 50);
  y=y+1.5;
  
  if(y>=999){
    y=0;
  }
  
}
