class Cherry {
  private int XPos;
  private int YPos;

  Cherry() { Move(); }

  int getX() { return XPos; }
  int getY() { return YPos; }

  void Draw() {
    fill(150, 0, 0);
    rect(XPos, YPos, 50, 50);
  }

  void Move() {
    XPos = 50*int(random(0, 10));
    YPos = 50*int(random(0, 10));
    
    for (int i = 0; i < snake.getLength(); i++) {
      if (XPos == snake.getX(i) && YPos == snake.getY(i)) this.Move();
    }
  }
}
