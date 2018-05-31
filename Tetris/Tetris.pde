Block[][] grid = new Block[10][24];
void setup(){
  size(300,720);
  for (int r =0; r<10; r++){
    for (int c = 0; c<24; c++){
      grid[r][c]= new Block(r,c,color(255));
    }
  }
}
void draw(){
  for (int r =0; r<10; r++){
    for (int c = 0; c<24; c++){
      fill(grid[r][c].c);
      rect(r*30, c*30, r*30+30, c*30+30);
    }
  }
}