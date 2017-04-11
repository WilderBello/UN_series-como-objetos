class Binomial {
  color hue;
  int yPos;
  int Comb=3;

  Binomial(int h) {
    setHue(h);
  }

  void setHue(color h) {
    hue = h;
  }

  int fact( int  num ){
    int mult = 1;
  
    while(num > 1){
    //num = num ;
      mult = mult * num;
      num--;
    }
    return mult;
  }
  
  int Coeficiente(int n, int k){
    return fact(n)/(fact(k)*(fact(n-k)));
  }
  
  void display(int terms) {
    //int square_width = width / terms;
    strokeWeight(1);
    beginShape(TRIANGLE_STRIP);
    fill(120,250,250);
    for(int i=0; i < terms ;i++){
      fill(i*22,i*23,i*24);
      vertex(i*6,Coeficiente(i,Comb)*6);
      fill(i*25,i*26,i*27);
      vertex(fact(i)*5,Coeficiente(i,Comb)*5);
      fill(i*28,i*29,i*30);
      vertex(Coeficiente(i,Comb)*5,i*5);
    }
    endShape(CLOSE);
    }
}