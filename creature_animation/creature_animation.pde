int r=0;
int y=100;
int dy=1;
int a=0;
int b=0;
int c=50;
int d=50;
int e=0;
int f=600;
int g=100;
int h=500;

void setup(){
  size(1000,1000);
}

void draw(){
  background(#2d5573);
  push();
 translate(500, 400);
  rotate(radians(r));
  r=r+1;
  stroke(#f29f3a);
  fill(#c96740);
  circle(350,0,100);
  circle(-350,0,100);
  circle(0,350,100);
  circle(0,-350,100);
  pop();
  //drawing and coloring the red surface of mars
fill(#a8461b);
rect(0,800,1000,1000);
stroke(255,255,255);
strokeWeight(5);

//drawing the stars in the martian sky
point(100,100);
point(750,166);
point(200,500);
point(50,600);
point(600,50);
point(750,290);
point(600,450);
point(280,300);
point(600,200);
point(60,300);
point(300,50);
point(650,700);
point(150,670);
point(750,730);
point(710,590);
point(290,710);

point(860,300);
point(900,50);
point(950,700);
point(850,570);
point(880,330);
point(960,490);
point(990,110);

//shooting stars
strokeWeight(0.7);
 line(a, b, c, d);
  a=a+4;
  b=b+4;
  c=c+4;
  d=d+4;

if(a==800){
  a=0;
  b=0;
  c=50;
  d=50;
}
line(e, f, g, h);
  e=e+4;
  f=f-4;
  g=g+4;
  h=h-4;

if(f<2){
  e=0;
  f=600;
  g=100;
  h=500;
}

//Drawing the robot's 2 arms and hands
translate(200,y);
scale(0.7);
y=y+dy;
fill(255,255,255);
stroke(#7b838f);
strokeWeight(10);
line(270,350,120,470);
circle(135,460,40);
line(530,350, 680,470);
circle(670,460,40);

/* Drawing the body with a triangle, ellipse and rectangle, 
with the yellow lines showing the electronic display*/
stroke(0,0,0);
strokeWeight(0);
fill(#7b838f);
circle(400, 460, 340);
fill(#959ead);
triangle(400, 260, 550, 350, 250, 350);
fill(#67756b);
rect(320, 350, 160, 150);
stroke(#bd9f35);
strokeWeight(8);
line(340, 360, 340, 420);
line(340, 440, 340, 480);
line(380, 360, 380, 480);
line(420, 360, 420, 380);
line(420, 400, 420, 445);
line(420, 465, 420, 480);
line(460, 360, 460, 400);
line(460, 420, 460, 480);

//Drawing the head and neck using ellipses
fill(#6a727d);
stroke(0,0,0);
strokeWeight(0);
ellipse(400, 270, 70, 40);
ellipse(400, 250, 70, 40);
fill(#959ead);
ellipse(400, 150, 250, 200);

//Robot's eye color, shape and size
fill(0, 0, 0);
strokeWeight(7);
stroke(255, 255, 255); 
circle(350, 150, 50);
circle(450, 150, 50);

/*Drawing the hover mechanism using lines and ellipses
located underneath the robot*/
stroke(#5f79b8);
strokeWeight(5);
fill(#2d5573);
ellipse(400, 650, 80, 20);
ellipse(400, 680, 100, 25);
ellipse(400, 710, 120, 30);
ellipse(400, 740, 140, 35);
ellipse(400, 770, 160, 40);
stroke(#81a4f7);
line(370,640,350,720);
line(348, 730, 325, 820);
line(355, 640, 290, 800);
line(390,640,385,690);
line(380,740, 370, 830);
line(400,670,400,720);
line(400,750,400,840);
line(372,680, 355, 780);
line(420,640,435,800);
line(435,670,455,820);
line(445,640,490,780);

if(y==150) {
  dy=-1;
}
if(y==50){
  dy=1;
}



}
