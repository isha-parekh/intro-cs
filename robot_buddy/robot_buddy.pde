
void setup(){
  size (1000, 1000);
  background(#2d5573);
  fill(150, 100, 50);
rect(0,800,1000,1000);
stroke(255,255,255);
strokeWeight(5);
}

//Anoushka's robot
void draw(){
//Body/Base
translate(-50, 320);
scale(0.7);
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


//rect(70,265,55,80);

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

//isha's robot
//Drawing the robot's 2 arms and hands
translate(350,-350);
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

//Lily's robot
// Neck Shape
translate(640,350);
scale(0.9);
fill(204, 255, 153);
circle(300, 350, 200);

//Lines on the neck 
strokeWeight(2);
stroke(0);
line (210, 307, 389, 307);
line (205, 317, 392, 317);
line (203, 327, 395, 327);
line (201, 337, 397, 337);
line (200, 347, 397, 347);

//Body Shape
fill(0, 204, 102);
rect(150, 350, 300, 200);
fill(255, 255, 255);

//Computer on body
rect(175, 375, 250, 150);
fill(0, 51, 25);
fill (0, 0, 0);
circle (230, 538, 20);
circle (370, 538, 20);
strokeWeight(6);
stroke(0);
line (241, 541, 361, 541);

//Text on body "computer"
textSize(20);
fill(0, 51, 25);
text(" ''Hello, I am Crazy Eyes 2007.", 175, 400); 
fill(0, 51, 25);
textSize(20);
text("Here from the planet Mars!", 190, 425); 
fill(0, 51, 25);
textSize(20);
text("To teach you terminal.''", 200, 450); 
fill(0, 0, 255);
textSize(20);
text("STEP 1: learn to use mv", 180, 490); 
fill(102, 0, 204);
textSize(20);
text("INCOMING MESSAGE....", 210, 370); 

//Head shape
noStroke();
fill (204, 255, 153);
rect (125, 50, 350, 200); 
rect (100, 200, 400, 100);

//"Gears" on the side of the head
rect (95, 80, 50, 100); 
rect (455, 80, 50, 100); 
fill (51, 102, 0);
rect (70, 90, 30, 70); 
rect (500, 90, 30, 70); 
fill (192, 192, 192);
circle (70, 125, 30);
circle (530, 125, 30);

//Circle decoration on face
fill (153, 255, 51);
circle (150, 65, 20);
circle (450, 65, 20);
stroke(0);
strokeWeight(4);

//Eye "mask" under eyes
fill (0,204,102);
ellipse(300, 120, 320, 110);

//Mouth ie tounge 
noStroke();
fill (0,0,0);
rect(125, 205, 350, 90);
ellipse(300, 250, 400, 20);
fill (204 , 0, 0);
ellipse(300, 250, 300, 70);

//Teeth 
fill (255, 255, 255);
arc (300, 250, 300, 70, radians(180), radians(360));
arc (300, 268, 222, 35, radians(0), radians(180));
strokeWeight (0);

//Upper Teeth lines
stroke (0);
strokeWeight (3);
line (176, 250, 176, 210);
line (206, 250, 206, 210);
line (236, 250, 236, 210);
line (266, 250, 266, 210);
line (296, 250, 296, 210);
line (326, 250, 326, 210);
line (356, 250, 356, 210);
line (386, 250, 386, 210);
line (416, 250, 416, 210);

//Lower Teeth lines
line (386, 287, 386, 269);
line (356, 287, 356, 269);
line (326, 287, 326, 269);
line (296, 287, 296, 269);
line (266, 287, 266, 269);
line (236, 287, 236, 269);
line (206, 287, 206, 269);

//Gold Tooth *placed on teeth already made
stroke(0);
fill (#FFD700);
strokeWeight(0);
rect(297.5, 267, 27, 18);

//Arm
stroke (204, 255, 153);
strokeWeight (35);
line (129, 432, 130, 605);
line (470, 425, 477, 605);
noStroke();

//Hand for Arm
stroke (0);
strokeWeight(6);
fill (0, 153, 76);
arc (478, 624, 50, 70, radians(180), radians(360));
arc (478, 628, 50, 70, radians(0), radians(180));
arc (128, 624, 50,70, radians(180), radians(360));
arc (128, 628, 50, 70, radians(0), radians(180));

//Arm Base
fill(#CCFFE5);
strokeWeight(2);
stroke(0);
circle (108, 387, 60);
circle (492, 387, 60);
fill(0, 102, 51);
strokeWeight(2);
stroke(0);
rect (110, 350, 40, 80); 
rect (450, 350, 40, 80); 

//Legs
stroke (204, 255, 153);
strokeWeight (90);
line (225, 620, 225, 749);
line (376, 622, 376, 749);
noStroke();

//Shorts 
strokeWeight(3);
stroke(0);
fill (128, 255, 0);
rect (151, 553, 150, 70); 
rect (300, 553, 150, 70); 

//Lines for leg one
stroke (0);
strokeWeight (5);
line (181, 649, 270, 649);
line (181, 689, 270, 689);
line (181, 729, 270, 729);

//Lines for leg two
line (333, 649, 421, 649);
line (333, 689, 421, 689);
line (333, 729, 421, 729);

fill(0, 128, 255);
strokeWeight(20);
stroke(255, 255, 255); 
circle(230, 120, 75);
circle(370, 120, 75);

}
