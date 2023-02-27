float xCenter;
float yCenter;
float heightOfBldg;
float yBottom= yCenter-(0.5*heightOfBldg);
float widthOfBldg;
boolean doubleDoor= false;
int numWindows=0;
int colour;
int counter;
 float xLeft= xCenter-(widthOfBldg/2);
  float yTop= yCenter- (heightOfBldg/2);
  float xWindowCenter, yWindowCenter;
  int a=1;

void setup(){
  size (1500,800);
  background(91, 172, 201);
  building(50, yBottom, widthOfBldg, numWindows);
  building(175, yBottom, widthOfBldg, numWindows);
  building(300, yBottom, widthOfBldg, numWindows);
  building(425, yBottom, widthOfBldg, numWindows);
  building(550, yBottom, widthOfBldg, numWindows);
  building(675, yBottom, widthOfBldg, numWindows);
  building(800, yBottom, widthOfBldg,numWindows);
  building(925, yBottom, widthOfBldg , numWindows);
  building(1050, yBottom, widthOfBldg, numWindows);
  building(1175, yBottom, widthOfBldg,numWindows);
  building(1300, yBottom, widthOfBldg,numWindows);
  building(1425, yBottom, widthOfBldg,numWindows);
}


void building(float xCenter, float yBottom, float widthOfBldg, int numWindows){
  int colour= (int) random(255);
  fill(colour);
  yBottom= 800;
  rectMode(CENTER);
  heightOfBldg=random(500,800);
  yCenter= yBottom - (heightOfBldg/2);
  widthOfBldg= random(75,125);
  rect(xCenter, yCenter, widthOfBldg, heightOfBldg);
   if(widthOfBldg<=100){
    doubleDoor= false;
  }
  else if(widthOfBldg>100){
   doubleDoor= true;
  }
  else{
    println("doubleDoor not functional");
  }
  if(doubleDoor==true){
    fill(105, 68, 35);
  rect(xCenter, 800, 50, 50);
  }
  else if(doubleDoor==false){
    fill(179, 144, 114);
    rect(xCenter, 800, 25, 50);
  }
 
  fill(199, 243, 252);
  if(widthOfBldg<=100){
    numWindows=3;
    
  }
  else if(widthOfBldg>100){
  numWindows= 4;
  }
  
  if(heightOfBldg<=600){
    a=9;
  }
  
  else if(heightOfBldg<=700){
    a=10;
  }
  else{
    a=11;
  }
  for(counter=1; counter<numWindows; counter=counter+1){
   
  }
  

}

void windows(){
   xWindowCenter= xLeft+ counter*(widthOfBldg/numWindows);
    yWindowCenter= yTop+ (heightOfBldg/(numWindows*a));
    rect(xWindowCenter, yWindowCenter, 20, 20);
  
}
