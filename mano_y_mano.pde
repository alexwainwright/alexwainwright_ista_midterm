  
  float keyCount = 0;
  float mouseCount = 0;
  int w = 500;
  int h = 500;
  PFont font = createFont("Papyrus", 20);

void setup() {
 size(h,w);
 background(255); 
  
  fill(0,0,160);
  text("MOUSE", 50,50);
  fill(160,0,0);
  text("KEYBOARD", 50,70);
  
  fill(255);
  rect(290,300,60,20);
  fill(0);
  text("FINISH",300,315);
}

void draw() {
  
  //I would clean up the numbers displayed, making them visible at every numeral
  fill(0);
  text(mouseCount, 100,100);
  text(keyCount,100,120);
  
  //I would try to find a better way to 
  //ellipse(50,50,mouseCount,mouseCount);
  //ellipse(50,200,keyCount,keyCount);
 
 fill(0,0,160);
 rect(300,50,20,mouseCount*5);
 fill(160,0,0);
 rect(320,50,20,keyCount*5);
 
 if(mouseCount==50){
   fill(0,0,160);
   textAlign(CENTER);
   textFont(font, 72);
   text("WINNER IS \nMOUSE", h/2,w/2);
 }
 //I would disable the text from appearing if Key finishes after Mouse
  if(keyCount==50){
   fill(160,0,0);
   textAlign(CENTER);
   textFont(font, 72);
   text("WINNER IS \nKEYBOARD", h/2,w/2);
 }
 
 //I would include the data array which would record when a click happened and which click it was
 //This array would then be used to create the instant replay
 
}

 void mouseClicked() {
 if(mouseCount < 50) {
 mouseCount += 1;
 } else if(mouseCount == 50){
 mouseCount = 50;
 }
 }
 
  void keyPressed() {
  if(keyCount < 50) {
 keyCount += 1;
 } else if(keyCount == 50){
 keyCount = 50;
 }
}
