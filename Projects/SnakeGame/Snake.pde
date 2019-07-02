class Snake {
  private int Length;
  private int[] X;
  private int[] Y;

  Snake() {
    Length = 2;
    X = new int[Length];
    Y = new int[Length];

    for (int i = 0; i < Length; i++) {
      X[i] = 200;
      Y[i] = 200+(i*50);
    }
  }

  void Step() {
    for (int i = Length-1; i > 0; i--) {
      X[i] = X[i-1];
      Y[i] = Y[i-1];
    }

    if (NextIns == 'u') {
      if (Y[0] != 0)
        Y[0] -= 50;
    } else if (NextIns == 'd') {
      if (Y[0] != 450)
        Y[0] += 50;
    } else if (NextIns == 'l') {
      if (X[0] != 0)
        X[0] -= 50;
    } else if (NextIns == 'r') {
      if (X[0] != 450)
        X[0] += 50;
    }
    
    if ((X[0] == cherry.getX() && Y[0] == cherry.getY()) ? true : false) {
      this.Grow();
      cherry.Move();
    }
  }

  void Draw() {
    float colour = 0;
    for (int i = 0; i < Length; i++) {
      fill(colour);
      colour += 255/Length;
      rect(X[i], Y[i], 50, 50);
    }
  }

  void Grow() {
    Length++;

    X = expand(X, Length);
    Y = expand(Y, Length);

    X[Length-1] = X[Length-2];
    Y[Length-1] = Y[Length-2];
  }

  boolean DetectColl() {
    for (int i = 0; i < Length; i++) {
      if (X[i] == X[0] || Y[i] == Y[0])
        return true;
        }
    return false;
  }

  int getLength() { return Length; }
  int getX(int val) { return X[val]; }
  int getY(int val) { return Y[val]; }
}
