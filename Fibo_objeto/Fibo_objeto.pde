Fibonacci sequence;
Binomial sequence1;
Deficiente sequence2;

void setup() {
  size(720,640);
  colorMode(HSB, 360, 100, 100);
  sequence = new Fibonacci(120);
  //sequence1 = new Binomial(120);
  sequence2 = new Deficiente(120);
}

void draw() {
  background(0);
  sequence.setHeight(mouseY);
  sequence.display(10);
  //sequence1.display(12);
  sequence2.display(12);
}