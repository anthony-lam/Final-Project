import java.util.*;
Block[][] grid = new Block[24][10];
ArrayList<Piece> falling = new ArrayList<Piece>();
void setup() {
  size(300, 720);
  for (int r =0; r<24; r++) {
    for (int c = 0; c<10; c++) {
      grid[r][c]= new Block(r, c, color(255));
    }
  }
}
void draw() {
  if (frameCount%10==0){
  add();
  checkCollision();
  for (int r =0; r<24; r++) {
    for (int c = 0; c<10; c++) {
      fill(grid[r][c].c);
      rect(c*30, r*30, c*30+30, r*30+30);
    }
  }
  }
}
void add() {
  if (falling.size()==0) {
    falling.add(new Piece());
  }
}

void checkCollision() {
    if (falling.get(0).checkCollisions()){
        falling.remove(0);
    }
    else{
      falling.get(0).moveDown();
    }
}

void keyPressed() {
  if (keyCode == RIGHT) {
    moveRight();
  }
  if (keyCode == LEFT) {
    moveLeft();
  }
  if (key == 'a' ){
    rotate(true); //left
  }
  if (key == 'd' ){
    rotate(false); //right
  }
}
void moveRight() {
  for (Piece current : falling) {
    current.moveRight();
  }
}
void moveLeft() {
  for (Piece current : falling) {
    current.moveLeft();
  }
}

void rotate(boolean left){
  for (Piece current : falling){
   current.rotate(left); 
  }
}
