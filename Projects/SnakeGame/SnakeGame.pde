Snake snake;
Cherry cherry;
float incX, incY, sec;
char NextIns;
boolean Fail;

void setup() {
  size(500, 500, P2D);
  background(200);
  noStroke();

  snake = new Snake();
  cherry = new Cherry();
}

void draw() {
   if (second() != sec) {
      background(200);
      
      snake.Step();    
      snake.Draw();
      cherry.Draw();
      
      sec = second();
  }
}

void keyPressed() {
  if (key == CODED) {
    switch (keyCode) {
    case UP:
      NextIns = 'u';
      break;
    case DOWN:
      NextIns = 'd';
      break;
    case LEFT:
      NextIns = 'l';
      break;
    case RIGHT:
      NextIns = 'r';
      break;
    default:
      break;
    }
  }
}
