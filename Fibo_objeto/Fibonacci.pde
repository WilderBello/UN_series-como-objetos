class Fibonacci {
  color hue;
  int yPos;

  Fibonacci(int h) {
    setHue(h);
  }

  void setHeight(int h) {
    yPos = h;
  }

  int height() {
    return yPos;
  }

  void setHue(color h) {
    hue = h;
  }

  color hue() {
    return hue;
  }

  int compute(int n) {
    if (n == 1)
      return 0;
    if (n == 2)
      return 1;
    if ( n > 2)
      return compute(n-2) + compute(n-1);
    return -1;
  }

  void display(int terms) {
    int square_width = width / terms;
    for (int i = 0; i < terms; i++) {
      fill(hue, 100, map(compute(i+1), 0, compute(terms), 0, 100));
      // note that we now pass our height() attribute
      // as a parameter type to the Processing rect() method
      rect(i*square_width, height(), square_width, 50);
    }
  }
}