float count = 0;

void setup() {
  size(500, 500, P2D);
  strokeWeight(4);
  background(255);
}

void draw() {
  background(255);
  translate(width/2, height/2);

  //draws black rectangle on left side of screen
  fill(0);
  rect(0, 0, width/2, height);
  stroke(255);
  
  //draws two sets of two quarter-circles, rotating in opposite directions 
  rotate(count);
  drawArcs(height);
  noStroke();
  fill(255);
  rotate(-2*count);
  drawArcs(height/2);

  //saveFrame("##.jpg");
  count+=QUARTER_PI/50;
}

void drawArcs(float radius) { //draws two quarter-circles
  arc(0, 0, radius, radius, 0, HALF_PI);
  arc(0, 0, radius, radius, PI, HALF_PI+PI);
}
