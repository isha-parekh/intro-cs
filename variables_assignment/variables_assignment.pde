int x = 0;
boolean n = true;
int y = 900;

void setup() {
  size(1000, 1000);
}

void draw(){
  background (100);
  square(x,0,100);
  circle (100, y, 100);
    x = x+1;
    y = y - 1;
}
