color col1 = color(0), col2 = color(255), back = col1, fore = col2;
PShape love, left, right, main;
float timing, speed = 0.001;
boolean isSmall;

void setup() {
  size(500, 500, P2D);
  noStroke();
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
  translate(width/2, height/2);
  timing = (speed*millis())%1;

  rotate(QUARTER_PI);
  if (timing > 0.85) {
    scale(1.25*(height/5));
 /*  alternating colours
    if (isSmall) {
      if (fore == col1) {
        fore = col2;
        back = col1;
      } else {
        fore = col1;
        back = col2;
      }
      isSmall = false;
    }
*/
  } else {
    scale(height/5);
    isSmall = true;
  }
  //scale(height/5+((height/5)*abs(sin(map(timing, 0, 1, 0, TWO_PI))))); //sine-based movement

  love.setFill(fore);
  background(back);
  shape(love);
  //saveFrame("##.jpg");
}
