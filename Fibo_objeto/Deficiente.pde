class Deficiente {
  color hue;
  int yPos;

  Deficiente(int h) {
    setHue(h);
  }

  void setHue(color h) {
    hue = h;
  }
  
 int deficiente(int n){
  int suma=0;
  for (int i=1; i<n; i++){
    if (n%i==0){
      suma+=i;
    }
  }
  if (suma<n){
    return n;
  }
  else{
    return 0;
  }
}
  int iter(int a){
    int x =0;
    int e=1;
    while(x!=a){
      if (deficiente(e)!=0){
        if(x==a-1){
          return e;
        }
        x++;
        e++;
      }
      else{
        e++;
      }
    }
    return 0;
  }

  void display(int terms) {
    pushStyle();
    colorMode(RGB, 255);
    strokeWeight(0);
    beginShape(TRIANGLES);
    for (int i=1;i<terms;i++){
      vertex(iter(i)*2,iter(i*10));
      vertex(iter(i*10),iter(i));
      vertex(iter(i*10)/i*50,iter(i*10)/i*50);
    }  
    endShape(CLOSE);
    popStyle();
  }
}