float widthOfBldg;
int numWindows;


void setup() {
  size (1500, 800);
  background(91, 172, 201);


  for (int counter=1; counter<=15; counter=counter + 1) {
    building(100 *counter, 800, widthOfBldg, numWindows);
  }


  for (int counter2=1; counter2<=15; counter2=counter2+1) {
    building(100 *counter2, 400, widthOfBldg, numWindows);
  }
}


void building(float xCenter, float yBottom, float widthOfBldg, int numWindows) {
  int colour= (int) random(255);
  boolean doubleDoor=false;
  float yCenter;
  fill(colour);
  rectMode(CENTER);
  float heightOfBldg=random(300, 400);
  yCenter= yBottom - (heightOfBldg/2);
  widthOfBldg= random(110, 160);
  rect(xCenter, yCenter, widthOfBldg, heightOfBldg);
  if (widthOfBldg<=125) {
    doubleDoor= false;
  } else if (widthOfBldg>125) {
    doubleDoor= true;
  } else {
    println("doubleDoor not functional");
  }
  if (doubleDoor==true) {
    fill(105, 68, 35);
    rect(xCenter, yBottom -15, 50, 30);
  } else if (doubleDoor==false) {
    fill(179, 144, 114);
    rect(xCenter, yBottom-15, 25, 30);
  }
  fill(199, 243, 252);
  if (widthOfBldg<=125) {
    numWindows=3;
  } else if (widthOfBldg>125) {
    numWindows= 4;
  }

  windows(xCenter, yBottom, widthOfBldg, numWindows, heightOfBldg);
}

void windows(float xCenter, float yBottom, float widthOfBldg, int numWindows, float heightOfBldg) {
  float xLeft= xCenter-(widthOfBldg/2);
  float step= widthOfBldg/(numWindows+1);
  int window= 1;
  while (window<=numWindows) {
    rect(xLeft+ window*step, yBottom - heightOfBldg/2, step/2, step/2);
    window= window+1;
  }
}
