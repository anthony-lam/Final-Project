import java.util.*;
Block[][] grid = new Block[24][10];
String state;
Button play;
Button back;
Button replay;
Button controls;
Button menu;
ArrayList<Piece> falling = new ArrayList<Piece>();
void setup() {
  size(250, 600);
  play = new Button(width/2, 200, 100, 50, "Play");
  back = new Button(width/2, 500, 100, 50, "Menu");
  replay = new Button(width/2, 100, 100, 50, "Replay");
  controls = new Button(width/2, 300, 100, 50, "Controls");
  menu = new Button(width/2, 200, 100, 50, "Menu");
  state = "Menu";
  setMenu();
}
void draw() {
  switch (state) {
  case "Menu":
    break;
  case "Play":
    play();
    break;
  case "Controls":
    break;
  case "Over":
    setOver();
    break;
  }
}
void mouseClicked() {
  if (play.over() && play.active()) {
    state = "Play"; 
    setPlay();
    play.deactivate();
    controls.deactivate();
  } 
  if (controls.over() && controls.active()) {
    state = "Controls";
    setControls();
    controls.deactivate();
    play.deactivate();
  } 
  if (back.over() && back.active()) {
    state = "Menu";
    setMenu();
    back.deactivate();
  } 
  if (replay.over() && replay.active()) {
    state = "Play";
    setPlay();
    replay.deactivate();
    menu.deactivate();
  } 
  if (menu.over() && menu.active()) {
    state = "Menu";
    setMenu();
    menu.deactivate();
    replay.deactivate();
  }
}

void setMenu() {
  PImage bg = loadImage("TetrisMenuBG.jpg");
  background(bg);
  play.add();
  controls.add();
}
void setPlay() {
  for (int r =0; r<24; r++) {
    for (int c = 0; c<10; c++) {
      grid[r][c]= new Block(r, c, color(255));
    }
  }
}
void setControls() {
  PImage bg = loadImage("TetrisControlsBG.jpg");
  background(bg);
  back.add();
}
void setOver() {
  replay.add();
  menu.add();
}

void play() {
  if (frameCount%10==0) {
    checkFullRow();
    add();
    checkCollision();
    for (int r =0; r<24; r++) {
      for (int c = 0; c<10; c++) {
        fill(grid[r][c].c);
        rect(c*25, r*25, c*25+25, r*25+25);
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
  if (falling.size()==1) {
    if (falling.get(0).checkCollisions()) {
      falling.remove(0);
    } else {
      falling.get(0).moveDown();
    }
  }
}


void checkFullRow() {
  if (falling.size()==0) {
    for (int r = 23; r > -1; r--) {
      boolean full = true;
      for (int c = 0; c < grid[0].length; c++) {
        if (grid[r][c].c == color(255)) {
          full = false;
          c = grid[0].length; //**im not sure if break is allowed
        }
      }
      if (full) {
        for (Block b : grid[r]) {
          b.c = color(255);
        }

        for (int i = r - 1; i > 0; i--) {
          for (Block b : grid[i]) {
            grid[b.x+1][b.y].c = b.c;
            b.c = color(255);
          }
        }
      }
    }
  }
}

void keyPressed() {
  if (keyCode == RIGHT) {
    moveRight();
  }
  if (keyCode == LEFT) {
    moveLeft();
  }
  if (key == ' ') {
    checkCollision();
  }
  if (keyCode == UP ) {
    rotate(true); //left
  }
  if (keyCode == DOWN ) {
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

void rotate(boolean left) {
  for (Piece current : falling) {
    current.rotate(left);
  }
}
