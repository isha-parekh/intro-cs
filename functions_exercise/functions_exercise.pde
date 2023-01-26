void setup(){
  size(400,400);
}

void draw(){
  background(20, 200, 200);
  fill(255);
  animal();
  
  translate(-100, -100);
  fill(255,0,0);
  animal();
  
  translate(200, 200);
  fill(0,0,255);
  animal();
}


void animal(){
  square(150, 200, 50);
  triangle(200,200,250,225,200,250);
  square(150,250,5);
  square(200,250,5);
}
