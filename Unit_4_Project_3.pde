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
  
} //setup ends here: ==========================================================================================================================

void drawIllustration(int x, int y) {
  pushMatrix();
  translate(x, y);
    darkNightBackground();
    drawCloud();
    drawStar();

    
  popMatrix();
} //drawIllustration ends here: ==================================================================================================================



void drawCloud() {
  noStroke();

  float x = random(0, 50);
  float y = random(70, 130);

  while (x < 1200) {

    fill(200, 180, 160, 120);
      ellipse(x + 125, y + 5, 75, 35);
      ellipse(x + 155, y + 15, 85, 40);
      ellipse(x + 95, y + 20, 65, 30);
      ellipse(x + 405, y - 15, 95, 45);
      ellipse(x + 435, y - 10, 105, 50);
      ellipse(x + 375, y - 5, 75, 35);

    fill(#7DB8DE);
      ellipse(x + 120, y, 80, 40);
      ellipse(x + 150, y + 10, 90, 45);
      ellipse(x + 90, y + 15, 70, 35);
      ellipse(x + 400, y - 20, 100, 50);
      ellipse(x + 430, y - 15, 110, 55);
      ellipse(x + 370, y - 10, 80, 40);


    x = x + random(50, width - 50);
    y = y + random(0, 70);
  }
  
} //drawCloud ends here: =========================================================================================================,======================



void drawStar() {
  float x = random(0, 50);
  float y = random(0, 800);
  
  while(x < 1200) {
    pushMatrix();
    translate(x, y);
    
    float s = random(0.2, 0.7);
    scale(s);
    
    drawGradientHalo();
    drawTriangle();
  
    popMatrix();
    
    x = x + random(50, 150);
    y = random(0, height);
    
  }
} //drawStar ends here: ==================================================================================================================================



void drawGradientHalo() {
  float r = 10;
  int transparent = 255;
  
  while (r <= 50) {
    noFill();
    stroke(255, 255, 100, transparent);
    ellipse(0, 0, r * 2, r * 2);
    r = r + 10;
    
    transparent = transparent - 40;
    
    if (transparent < 0) {
      transparent = 0;
    }
  }
} //Stars  ---  Sub-Function: drawGradientHalo ends here: ====================================================================================================



void drawTriangle() {
  int rotateCount = 0;
  float degree = 0;
  
  while (rotateCount <= 8) {
  //pushMatrix();
  //translate(x, y);
  fill(255, 255, 0);
  noStroke();
  rotate(rotateCount * (PI/4));
  triangle(0, -10, -5, 5, 5, 5);
  //popMatrix();
  
  rotateCount = rotateCount + 1;
  }
  
} //Stars  ---  Sub-Function: drawTriangle ends here: ============================================================================================================




void darkNightBackground() {
  while ( y <= 1200) {
    randomizedColor = map(y, 0, 1200, 0, 1);
    color p = lerpColor(Gradient1, Gradient2, randomizedColor);
    stroke(p);
    line(0, y, 1200, y);
    y = y + 1;
  }
} //drawNightBackground ends here: ================================================================================================================================
