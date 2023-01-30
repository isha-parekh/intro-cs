void setup(){
  size(400,400);
}

void draw(){
  background(20, 200, 200);
  
  
  push();
  translate(20,0);
  scale(0.15);
  robot();
  pop();
  
  
  fill(255);
  animal();
  
  push();
  translate(140,100);
  scale(0.15);
  robot();
  pop();
  
  translate(-100, -100);
  fill(255,0,0);
  animal();
  
  push();
  translate(340,300);
  scale(0.15);
  robot();
  pop();
  
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
//taken from https://github.com/ab428/into_cs/blob/main/creature_animated.pde
void robot(){
 //Body/Base
 push();
 stroke(0);
 strokeWeight(1);
 fill(200,200,200);
 rect(250,25,160,160); //head
 rect(285,185,100,30); //neck
 rect(95,275,130,80);//arm
 rect(445,275,130,80);//arm
 rect(200,215,270,270); //body
 quad(225,620,285,620,320,700,190,700);//feet
 quad(385,620,445,620,480,700,350,700);//feet
 rect(225,485,60,135);//leg
 rect(385,485,60,135);//leg

 //body details
 fill(255,255,200);
 stroke(200,150,40);
 strokeWeight(2); //stomach
 rect(230,240,210,220); 
 arc(215, 700, 35, 45, PI, TWO_PI); //feetclaws
 arc(255, 700, 35, 45, PI, TWO_PI); //feetclaws
 arc(295, 700, 35, 45, PI, TWO_PI); //feetclaws
 arc(375, 700, 35, 45, PI, TWO_PI); //feetclaws
 arc(415, 700, 35, 45, PI, TWO_PI); //feetclaws
 arc(455, 700, 35, 45, PI, TWO_PI); //feetclaws
 arc(575, 290, 40, 25, 1.57,4.71); //handclaws
 arc(575, 315, 40, 25, 1.57,4.71); //handclaws
 arc(575, 340, 40, 25, 1.57,4.71); //handclaws
 arc(97.5, 290, 40, 25, 4.71,TWO_PI+1.57); //handclaws
 arc(97.5, 315, 40, 25, 4.71,TWO_PI+1.57); //handclaws
 arc(97.5, 340, 40, 25, 4.71,TWO_PI+1.57); //handclaws


 //Face
 fill(255,255,255);
 stroke(5,0,0);
 circle(295,70,50); //Eye outer part
 circle(365,70,50); //Eye outer part
 fill(0,0,0);
 circle(295,70,30); //Eye inner part
 circle(365,70,30); //Eye inner part
 rect(290,120,80,30);//mouth
 fill(255,255,255);//teeth
 triangle(310, 150, 290, 150, 300, 130);
 triangle(330, 150, 310, 150, 320, 130);
 triangle(350, 150, 330, 150, 340, 130);
 triangle(370, 150, 350, 150, 360, 130);
 pop();
}
