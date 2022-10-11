/*October 11th: Isha Parekh
My robot is a futuristic research robot on Mars. 
Its main purpose is to explore the surface and search for any signs of water or life on Mars.
It moves along the surface by hovering, avoiding any damage to its parts.
Its eyes are cameras, recording its progress.
The neck is extendable and can rotate, allowing it to record/ see information in all directions.
The lighter metal is a heat shield, protecting it from the sun's heat.
The computer (the rectangle with yellow lines) transmits information to and from Earth*/

//defining the size and color of the background
size(800, 1000);
background(#2d5573);

//drawing and coloring the red surface of mars
fill(#a8461b);
rect(0,800,800,1000);
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

//Drawing the robot's 2 arms and hands
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

//The robot is complete
