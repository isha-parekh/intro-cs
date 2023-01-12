/*Isha Parekh- January 10th, 2023 //<>//
 
 This animation is a game, where the player collects the falling balls and gains points.
 After 30 seconds, a score is provided according to the number of balls collected by the player, whose
 character is the robot. Using the code from processing, I tried to make shapes visible and invisible
 using setVisible() and isVIsible(), but I could not figure out how they worked, and eventually found
 another way to get rid of the start button. I also struggled with finding a way for the points to increase
 whenever the ball hit the robot. I took inspiration from the rock, paper and scissor game we coded during class,
 and decided to do something similar- a game- for my final project.*/


//values for circle to move.
float circle1x = random(50, 650);
float circle1y=0;
float circle2x = random(50, 650);
float circle2y = 0;
float circle2dy=5;
float circle1dy=10;
//randomised color
int r = (int) random (0, 255);
int g = (int) random (0, 255);
int b= (int) random (0, 255);
int R = (int) random (0, 255);
int G = (int) random (0, 255);
int B= (int) random (0, 255);
//movement of circle and character
boolean throwBall = false;
int translateX=0;
int translateY;
int points=0;
//click on button to start
String pressButton= "Not Clicked";
//counter (timer)
int counter= 0;
//gain points every time the ball touches the robot
float robotX;
float robotY;

void setup() {
  size(700, 700);
}


void draw() {
  background(#cae7fc);
  //random placement of circles and their colors
  if (circle1y > height) {
    circle1x = random(50, 650);
    circle1y = 0;
    r= (int) random (0, 255);
    g=(int) random (0, 255);
    b=(int) random (0, 255);
  }
  if (circle2y > height) {
    circle2x = random(50, 650);
    circle2y = 0;
    R= (int) random (0, 255);
    G=(int) random (0, 255);
    B=(int) random (0, 255);
  }

  /*when the button is clicked the balls start falling, and when the timer runs out
  the code stops*/
  if (pressButton=="Clicked") {
    throwBall= true;
    counter=counter+1;
  }

  if (counter >= 900) {
    throwBall = false;
    pressButton="Not Clicked";
    text("Time's up!", 350, 50);
  }
  //balls falling and start button
  if (throwBall==true) {
    fill(r, g, b);
    stroke(0, 0, 0);
    strokeWeight(5);
    circle(circle1x, circle1y, 50);
    circle1y=circle1dy+circle1y;
    fill(R, G, B);
    circle(circle2x, circle2y, 50);
    circle2y=circle2dy+circle2y;
  } else if (throwBall==false) {
    fill(255);
    rect(150, 200, 375, 200);
    fill(0, 0, 0);
    textSize(100);
    text("Start", 230, 330);
  } else {
    println("not clicked");
  }

  //text for points and start

  textSize(50);
  text("Points: " + points, 0, 50);

  //this is the robot/creature used as a character
  push();
  translate(translateX, translateY);
  scale(0.3);
  translate(800, 1500);
  fill(255, 255, 255);
  stroke(#7b838f);
  stroke(0, 0, 0);
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
  fill(#6a727d);
  stroke(0, 0, 0);
  strokeWeight(0);
  ellipse(400, 270, 70, 40);
  ellipse(400, 250, 70, 40);
  fill(#959ead);
  ellipse(400, 150, 250, 200);
  fill(0, 0, 0);
  strokeWeight(7);
  stroke(255, 255, 255);
  circle(350, 150, 50);
  circle(450, 150, 50);
  stroke(#5f79b8);
  strokeWeight(5);
  fill(#2d5573);
  ellipse(400, 650, 80, 20);
  ellipse(400, 680, 100, 25);
  ellipse(400, 710, 120, 30);
  ellipse(400, 740, 140, 35);
  ellipse(400, 770, 160, 40);
  stroke(#81a4f7);
  line(370, 640, 350, 720);
  line(348, 730, 325, 820);
  line(355, 640, 290, 800);
  line(390, 640, 385, 690);
  line(380, 740, 370, 830);
  line(400, 670, 400, 720);
  line(400, 750, 400, 840);
  line(372, 680, 355, 780);
  line(420, 640, 435, 800);
  line(435, 670, 455, 820);
  line(445, 640, 490, 780);
  pop();

  //scoring points when the ball touches the robot

  float robotX = translateX + 350;
  float robotY = translateY + 470;
  if (throwBall==true && circle1x > robotX - 100 && circle1x < robotX + 100 && circle1y==robotY || (throwBall==true && circle2x > robotX - 100 && circle2x < robotX + 100 && circle2y == robotY)) {
    points= points + 1;
  }
}

//moving the robot left and right
void keyPressed() {
  if (keyCode == LEFT) {
    translateX=translateX - 25;
  } else if (keyCode == RIGHT) {
    translateX=translateX+25;
  } else {
    println("incorrect keys used");
    textSize(30);
    text("Use the left and right keys to move the robot!", 75, 100);
  }
}
//assigning values to string pressButton
void mousePressed() {
  if (mouseX <= 530 && mouseX >= 150 && mouseY >= 200 && mouseY <= 400) {
    pressButton= "Clicked";
    counter=0;
    points=0;
  } else {
    pressButton= "Not Clicked";
  }
}
