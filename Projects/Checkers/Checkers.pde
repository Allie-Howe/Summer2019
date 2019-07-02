float NumSquares = 7;
float SquareSize;
color col1 = color(0);
color col2 = color(255);
float timing;
float speed = 0.0002;
float rotSpeed = 5;

void setup() { //defines initial state, called at start of program
  size(500, 500, P2D);
  //fullScreen(P2D);
  background(col2);
  noStroke();
  fill(col1);
  SquareSize = height/NumSquares;
}


void draw() { //main function, repetetively called
  timing = (speed*millis())%1; //function which converts the running time (in ms) into a number between 0 and 1 
  if (timing >= 0.5) go(true); else go(false);
  
  //  saveFrame("##.jpg"); //takes a picture of the window's state and saves it as a .jpg
}

void go(boolean first) {
  //sets background colour and square colour
  if (first) { fill(col1); background(col2);
  } else { fill(col2); background(col1); }
  
  //traverses the screen, rotates and draws the relevant squares 
  for (float i = -1; i < NumSquares+2; i++) {
    for (float j = -1; j < NumSquares+2; j++) {
      pushMatrix();
      translate(i*SquareSize, j*SquareSize);
      rotate(timing*PI);
      if ((i+j) % 2 == 0 && first) rect(0, 0, SquareSize, SquareSize);
      if ((i+j) % 2 == 1 && !first) rect(0, 0, SquareSize, SquareSize);
      popMatrix();
    }
  }
}
