class Compuesto {
  color hue;
  int yPos;

  Compuesto(int h) {
    setHue(h);
  }

  void setHue(color h) {
    hue = h;
  }
  
 int compuesto(int n){
  for (int i=2; i<n; i++){
    if (n%i==0){
      return n;
    }
  }
  return 0;
}
int ncompuesto(int a){
  int x =0;
  int y =1;
  while(x!=a){
    if (compuesto(y)!=0){
      if (x==a-1){
        return y;
      }
      x++;
      y++;
    }
    else{
      y++;
    }
  }
  return 0;
}

  void display(int terms) {
    pushStyle();
  colorMode(RGB, 255);
  strokeWeight(1);
  beginShape(TRIANGLE_STRIP);
    fill(120,250,250);
    for(int i=1; i < terms ;i++){
      fill(i*22,i*23,i*24);
      vertex(i*4*terms,ncompuesto(i)*20);
      fill(i*25,i*26,i*27);
      vertex(4*terms,ncompuesto(i)*22);
      fill(i*28,i*29,i*30);
      vertex(ncompuesto(i)*8,terms*6);
      fill(i*31,i*32,i*33);
      vertex(ncompuesto(i)*6,terms*6);      
    }
  endShape(CLOSE);
  popStyle();
  }
}