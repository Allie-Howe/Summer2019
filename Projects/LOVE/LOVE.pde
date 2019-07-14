color col1 = color(0), col2 = color(255);
PShape love, left, right, main;
float timing, speed = 0.001;
  
void setup() {
  size(500, 500, P2D);
  noStroke();
  fill(col2);
  ellipseMode(CENTER);
  rectMode(CENTER);

  love = createShape(GROUP);
  main = createShape(RECT, 0, 0, 1, 1);
  left = createShape(ELLIPSE, -0.5, 0, 1, 1);
  right = createShape(ELLIPSE, 0, -0.5, 1, 1);
  love.addChild(main);
  love.addChild(left);
  love.addChild(right);
}


void draw() {
  background(col1);
  translate(width/2, height/2);
  timing = (speed*millis())%1;

  rotate(QUARTER_PI);
  if (timing > 0.85) scale(1.25*(height/5));
  else scale(height/5);

  shape(love);
//  saveFrame("##.jpg");
}
