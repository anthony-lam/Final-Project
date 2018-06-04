Block[][] grid = new Block[24][10];
ArrayList<Piece> falling = new ArrayList<Piece>();
void setup(){
  size(300,720);
  for (int r =0; r<24; r++){
    for (int c = 0; c<10; c++){
      grid[r][c]= new Block(r,c,color(255));
    }
  }
}
void draw(){
  checkCollision();
  for (int r =0; r<24; r++){
    for (int c = 0; c<10; c++){
      fill(grid[r][c].c);
      rect(c*30, r*30, c*30+30, r*30+30);
    }
  }
}
void add(Piece p){
  falling.add(p);
}
void checkCollision(){
  for (Piece current: falling){
    int[][] bottom = current.getBottom();
    for (int i=0;i<bottom.length;i++){
      if (grid[bottom[i][0]][bottom[i][1]].c != color(255) || bottom[i][0]>=24){
        falling.remove(current);
      }
    }
  }
}
void keyPressed(){
  if (keyCode == RIGHT){
    moveRight();
  }
  if (keyCode == LEFT){
    moveLeft();
  }
}
void moveDown(){
  for(Piece current:falling){
    current.moveDown();
  }
}
void moveRight(){
  for(Piece current:falling){
    current.moveRight();
  }
}void moveLeft(){
  for(Piece current:falling){
    current.moveLeft();
  }
}