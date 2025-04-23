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
    
    translate(20, 10);
    drawCloud();
    
    popMatrix();
    
    
    pushMatrix();
    translate(x, y);
    drawStar();
    ground(-2, 600);
    
    drawHouse(10, 10, 0.1);

    popMatrix();
    
} //drawIllustration ends here: ==================================================================================================================


void drawHouse(int x, int y, float s) {
  pushMatrix();
  translate(x, y);
  
  scale(s);
  
  float r, g, b;
  float r2, g2, b2;
  float r3, g3, b3;
  
  r = random(0, 255);
  g = random(0, 255);
  b = random(0, 255);
  
  r2 = random(0, 255);
  g2 = random(0, 255);
  b2 = random(0, 255);
  
  r3 = random(0, 255);
  g3 = random(0, 255);
  b3 = random(0, 255);
  
  wall(r, g, b, 0.7);
  window(50, 100, r2, g2, b2);
  window(350, 100, r2, g2, b2);
  roof(r3, g3, b3);
  door(115, 225, r2, g3, b);
  
  popMatrix();
  
} //drawHouse ends here: =============================================================================================================================

void wall(float r, float g, float b, float s) {
  scale(s);
  fill(r, g, b);
  rect(0, 0, 600, 600, 0.7);

} //drawHouse  ---  Sub-Function: wall ends here: ===================================================================================================

void roof(float r, float g, float b) {
  fill(r, g, b);
  triangle(0, 0, 300, -200, 600, 0);
} //drawHouse  ---  Sub-Function: roof ends here: ==================================================================================================


void window(int x, int y, float r, float g, float b) {
  pushMatrix();
  translate(x, y);
  fill(r, g, b);
  strokeWeight(2);
  rect(0, 0, 200, 200, 1000);
  line(100, 0, 100, 200);
  line(0, 100, 200, 100);
  popMatrix();
  
  
} //drawHouse  ---  Sub-Function: window ends here: ==================================================================================================

void door(int x, int y, float r, float g, float b) {
  pushMatrix();
  translate(x, y);
  fill(r, g, b);
  rect(x, y, 70, 150);
  rect(x + 70, y, 70, 150);
  popMatrix();
  
  
} //drawHouse  ---  Sub-Function: door ends here: ===================================================================================================

void bricks() {
  
} //drawHouse  ---  Sub-Function: bricks ends here: =================================================================================================



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
  
} //drawCloud ends here: ================================================================================================================================



void drawStar() {
  float x = random(0, 50);
  float y = random(0, 800);
  
  while(x < 1200) {
    pushMatrix();
    translate(x, y);
    rotate(random(2 * PI));
    
    float s = random(0.2, 0.7);
    scale(s);
    
    drawGradientHalo();
    drawTriangle(0, 0);
  
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
    r = r + 1;
    
    transparent = transparent - 20;
    
    if (transparent < 0) {
      transparent = 0;
    }
  }
} //Stars  ---  Sub-Function: drawGradientHalo ends here: ====================================================================================================



void drawTriangle(int x, int y) {
  int rotateCount = 0;
  float degree = 0;
  
  while (rotateCount <= 8) {
    pushMatrix();
    translate(x, y);
    fill(255, 255, 0);
    noStroke();
    rotate(rotateCount * (PI/2));
    triangle(0, -10, -5, 2, 5, 2);
    popMatrix();
  
  rotateCount = rotateCount + 1;
  }
  
} //Stars  ---  Sub-Function: drawTriangle ends here: ===========================================================================================================



void ground(int x, int y) {
  pushMatrix();
  translate(x, y);
  fill(darkestblue);
  stroke(0, 0, 0, 50);
  strokeWeight(2);
  rect(0, 0, 1202, 600);
  
  
  rockShadows();
  
  popMatrix();
  
} //Ground function ends here: ===================================================================================================================================



void rockShadows() {
  float x = 0;
  float y = 0;
  
  while(x <= 1200) {
    pushMatrix();
    translate(x, y);
    fill(red(greyblue), green(greyblue), blue(greyblue), random(50, 200));
    stroke(0, 0, 0, random(50, 200));
    strokeWeight(0.7);
    ellipse(x + random(0, 1200), y + random(0, 200), random(7, 17), random(7, 17));
    x = x + 2;
    y = y + 2;  
    
    popMatrix();
}
  
  
  
} //Ground -- Sub-Function: rocks ends here: =====================================================================================================================




void darkNightBackground() {
  while ( y <= 1200) {
    randomizedColor = map(y, 0, 1200, 0, 1);
    color p = lerpColor(Gradient1, Gradient2, randomizedColor);
    stroke(p);
    line(0, y, 1200, y);
    y = y + 1;
  }
} //drawNightBackground ends here: ================================================================================================================================
