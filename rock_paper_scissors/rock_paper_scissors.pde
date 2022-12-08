String userChoice;
String computerChoice="Not Chosen";
int x=-1;

void setup() {
  size (700, 700);
  textSize(25);
}

void draw() {
  background(#f7a7a1);
  //buttons
  translate(-90, 0);

  if (x==0) {
    computerChoice= "Rock";
  } else if (x==1) {
    computerChoice= "Paper";
  } else if (x==2) {
    computerChoice= "Scissors";
  } else {
    computerChoice="Not Chosen";
  }

  fill(255);
  if (userChoice=="Rock") {
    fill (255, 0, 0);
  } else {
    fill(255);
  }
  rect(width / 3, 100, 100, 50);
  if (userChoice=="Paper") {
    fill (255, 0, 0);
  } else {
    fill(255);
  }
  rect(width / 3 + 150, 100, 100, 50);
  if (userChoice=="Scissors") {
    fill (255, 0, 0);
  } else {
    fill(255);
  }
  rect(width / 3 + 300, 100, 100, 50);
  fill (0);
  translate(7, 0);
  text("Paper", width / 3 + 150, 140);
  text("Scissors", width / 3 + 300, 140);
  text("Rock", width / 3, 140);
  text ("Computer:", 200, 400);
  text(computerChoice, 400, 400);

  if (computerChoice==userChoice) {
    text("DRAW", 400, 500);
  } else if ((computerChoice=="Rock" && userChoice=="Paper")||(computerChoice=="Scissors" && userChoice=="Rock")||(computerChoice=="Paper" && userChoice=="Scissors")) {
    text("YOU WIN!", 400, 500);
  } else if ((computerChoice=="Rock" && userChoice=="Scissors")||(computerChoice=="Scissors" && userChoice=="Paper")||(computerChoice=="Paper" && userChoice=="Rock")) {
    text("YOU LOSE :(", 400, 500);
  }
}





void mousePressed() {

  if (mouseX <= width/3 && mouseX >= width/3-100 && mouseY >= 100 && mouseY <= 150)
  {
    userChoice="Rock";
    x=(int) random (3);
  } else if (mouseX <= width/3 +150 && mouseX >= width/3+50 && mouseY >= 100 && mouseY <= 150) {
    userChoice="Paper";
    x=(int) random (3);
  } else if (mouseX<= width/3 + 300 && mouseX >= width/3+200 && mouseY >= 100 && mouseY <= 150) {
    userChoice="Scissors";
    x=(int) random (3);
  } else {
    userChoice="Not Pressed";
  }

  println(userChoice);
}
