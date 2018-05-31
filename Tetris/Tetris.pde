
void setup(){
  size(300,720);
}

void draw(){
  for (int r=0;r<10;r++){
    for (int c =0;c<24;c++){
      rect(r*30,c*30,r*30+30,c*30+30);
    }
  }
}
