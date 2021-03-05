HHand hour;
MHand minute;
SHand seconds;

int cx;
int cy;
float secondsAngle;
float minutesAngle;
float hoursAngle;
float clock;
float startrotate;
int startrotates;
int ticks;
float place;
float s = second();
float m = minute();
float h = hour();
PFont f;
int num = 12;

void setup() {
  size(1000,1000);
  stroke(255);
  hour = new HHand(0,0,250,10);
  minute = new MHand(0,0,250,6);
  seconds = new SHand(0,0,250,3);
  
  cx = 0;
  cy = 0;
  startrotate = -PI/2;
  f = createFont("Arial", 12, true); // Arial, 16 point, anti-aliasing on
  textFont(f, 15);
  
}
//get minutes/seconds/hours then mutiply amount of mins to the angle
void draw() {
  translate(width/2,height/2); 
  rotate(startrotate);
  background(0);
  fill(145);
  noStroke();
  ellipse(cx,cy,500,500);
  
  for(int i = 0;i<59;i += 1){
  fill(255,0,0);
  ellipse(0,-240,10,10);
  rotate(2*PI/60);
  }
  for(int i = 0;i<11;i += 1){
  fill(255);
  ellipse(0,-240,20,20);
  rotate(2*PI/12);
  }
  
  
  num = 0;
  
  fill(255);
  ellipse(cx,cy,50,50);
  
  
  minute.rotator();
  minute.draw();
  
  
  seconds.rotator();
  seconds.draw();
  
  hour.rotator();
  hour.draw();
  
  fill(255);
  ellipse(cx,cy,50,50);

//9 on clock
rotate(2*PI);  
rotate((2 * PI) / 6);
translate(0, 190);
rotate(PI - (4 * PI) / 4);
text("6", 0, 0);
rotate(-PI + (4 * PI) / 4);
translate(0, -190);
rotate(-(2 * PI) / 6);
rotate(-2*PI);

//6 on clock
rotate(2*PI);
rotate((2 * PI) / 2.4);
translate(0, 190);
rotate(PI - (4 * PI) / 2.7);
text("9", 0, 0);
rotate(-PI + (4 * PI) / 2.7);
translate(0, -190);
rotate(-2*PI);
rotate(-(2 * PI) / 2.4); 

//3 on clock
rotate(2*PI);  
rotate((PI/6) * -1 );
translate(0, 190);
rotate(PI - (4 * PI) / -2.7);
text("3", 0, 0);
rotate(-PI + (4* PI) / -2.7);
translate(0, -190);
rotate(-2*PI);
rotate(-(PI/6) );

//12 on clock
rotate(2*PI);  
rotate((PI/6) * -2 );
translate(0, 190);
rotate(PI - (4 * PI) / 2);
text("12", 0, 0);
rotate(-PI + (4* PI) / 2);
translate(0, -190);
rotate(-2*PI);
rotate(-(PI/6) *2 );
}
