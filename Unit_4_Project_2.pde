// April 16th, 2025
// Lawrence Mo
// Title: Unit 4 Project
//Theme: Night Sky


// Block 2-4

//color integers
color backgroundblue  = #70B3ED;
color lightblue       = #82B3F3;
color mediumblue      = #5A8AD8;
color darkblue        = #2C6CB5;
color darkestblue     = #305896;
color black           = #000000;
color greyblue        = #7A9FED;

//grandient:
int y = 0;
float randomizedColor = 0;

color Gradient1 = #14297C;
color Gradient2 = #9FBDF1;


void setup() {
  size(1200, 800);
  background(255);
    drawIllustration(0, 0);
  
}

void drawIllustration(int x, int y) {
  pushMatrix();
  translate(x, y);
    darkNightBackground();
    cloud();
  
  popMatrix();
}



void cloud() {
fill(200, 180, 160, 120);
noStroke();

  float x = random(90, 435);
  float y = random(80, 110);
  float r = random(35, 75);
  
  while(x > 1200) {
    circle(x, y, r);
    x = x + 200;
    

  ellipse(125, 105, 75, 35);
  ellipse(155, 115, 85, 40);
  ellipse(95, 120, 65, 30);
  ellipse(405, 85, 95, 45);
  ellipse(435, 90, 105, 50);
  ellipse(375, 95, 75, 35);
  
fill(255, 160, 80);
  ellipse(120, 100, 80, 40);
  ellipse(150, 110, 90, 45);
  ellipse(90, 115, 70, 35);
  ellipse(400, 80, 100, 50);
  ellipse(430, 85, 110, 55);
  ellipse(370, 90, 80, 40);
  
  
}
}





void darkNightBackground() {
  while ( y <= 1200) {
    randomizedColor = map(y, 0, 1200, 0, 1);
    color p = lerpColor(Gradient1, Gradient2, randomizedColor);
    stroke(p);
    line(0, y, 1200, y);
    y = y + 1;
  }
}
