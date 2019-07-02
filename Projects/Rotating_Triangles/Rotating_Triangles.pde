float distance, rotation;
int count, len, range, numSquares = 6, maxDist = 150;

void setup() {
  size(500, 500, P3D);
  rectMode(CENTER);
  background(0);
  fill(255);
  noStroke();
}

void draw() {
  background(0);
  translate(width/2, height/2);
  rotate(rotation);

  len = bounce();
  for (int i = 0; i < numSquares; i++) {
    pushMatrix();
    rotate(i*(TWO_PI/numSquares));
    translate(0, len);
    rotate(5*rotation);
    triangle(0, 0, 100, 100, -100, 0);
    popMatrix();
  }

  //saveFrame("##.jpg");
  rotation+=HALF_PI/200;
}

int bounce() {
  distance = count + (maxDist - (count++ % maxDist));

  if ((distance/maxDist)%2 == 0) return --range;
  else return ++range;
}
