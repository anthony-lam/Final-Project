public class Piece {
  int [][] LinePiece1 = {
    {0, 1, 0, 0}, 
    {0, 1, 0, 0}, 
    {0, 1, 0, 0}, 
    {0, 1, 0, 0}
  };
  int [][] LinePiece2 = {
    {0, 0, 1, 0}, 
    {0, 0, 1, 0}, 
    {0, 0, 1, 0}, 
    {0, 0, 1, 0}
  };
  int [][] LinePiece3 = {
    {0, 0, 0, 0}, 
    {0, 0, 0, 0}, 
    {1, 1, 1, 1}, 
    {0, 0, 0, 0}
  };
  int [][] LPiece1 = {
    {0, 0, 1, 0}, 
    {0, 0, 1, 0}, 
    {0, 1, 1, 0}, 
    {0, 0, 0, 0}
  };
  int [][] LPiece2 = {
    {0, 0, 1, 1}, 
    {0, 0, 1, 0}, 
    {0, 0, 1, 0}, 
    {0, 0, 0, 0}
  }; 
  int [][] LPiece3 = {
    {0, 1, 0, 0}, 
    {0, 1, 1, 1}, 
    {0, 0, 0, 0}, 
    {0, 0, 0, 0}
  };
  int [][] LPiece4 = {
    {0, 0, 0, 0}, 
    {0, 1, 1, 1}, 
    {0, 0, 0, 1}, 
    {0, 0, 0, 0}
  };
  int [][] BLPiece1 = {
    {0, 1, 1, 0}, 
    {0, 0, 1, 0}, 
    {0, 0, 1, 0}, 
    {0, 0, 0, 0}
  };
  int [][] BLPiece2 = {
    {0, 0, 1, 0}, 
    {0, 0, 1, 0}, 
    {0, 0, 1, 1}, 
    {0, 0, 0, 0}
  }; 
  int [][] BLPiece3 = {
    {0, 0, 0, 0}, 
    {0, 1, 1, 1}, 
    {0, 1, 0, 0}, 
    {0, 0, 0, 0}
  };
  int [][] BLPiece4 = {
    {0, 0, 0, 1}, 
    {0, 1, 1, 1}, 
    {0, 0, 0, 0}, 
    {0, 0, 0, 0}
  };
  int [][] SquarePiece1 = {
    {0, 1, 1, 0}, 
    {0, 1, 1, 0}, 
    {0, 0, 0, 0}, 
    {0, 0, 0, 0}
  };
  int [][] ZPiece1 = {
    {0, 1, 0, 0}, 
    {0, 1, 1, 0}, 
    {0, 0, 1, 0}, 
    {0, 0, 0, 0}
  };   
  int [][] ZPiece2 = {
    {0, 0, 1, 0}, 
    {0, 0, 1, 1}, 
    {0, 0, 0, 1}, 
    {0, 0, 0, 0}
  };  
  int [][] ZPiece3 = {
    {0, 0, 0, 0}, 
    {0, 0, 1, 1}, 
    {0, 1, 1, 0}, 
    {0, 0, 0, 0}
  };       
  int [][] BZPiece1 = {
    {0, 0, 1, 0}, 
    {0, 1, 1, 0}, 
    {0, 1, 0, 0}, 
    {0, 0, 0, 0}
  };   
  int [][] BZPiece2 = {
    {0, 0, 0, 1}, 
    {0, 0, 1, 1}, 
    {0, 0, 1, 0}, 
    {0, 0, 0, 0}
  };  
  int [][] BZPiece3 = {
    {0, 0, 0, 0}, 
    {0, 1, 1, 0}, 
    {0, 0, 1, 1}, 
    {0, 0, 0, 0}
  }; 
  int [][] TPiece1 = {
    {0, 0, 1, 0}, 
    {0, 1, 1, 0}, 
    {0, 0, 1, 0}, 
    {0, 0, 0, 0}
  };
  int [][] TPiece2 = {
    {0, 0, 1, 0}, 
    {0, 0, 1, 1}, 
    {0, 0, 1, 0}, 
    {0, 0, 0, 0}
  };
  int [][] TPiece3 = {
    {0, 0, 0, 0}, 
    {0, 1, 1, 1}, 
    {0, 0, 1, 0}, 
    {0, 0, 0, 0}
  };
  int [][] TPiece4 = {
    {0, 0, 1, 0}, 
    {0, 1, 1, 1}, 
    {0, 0, 0, 0}, 
    {0, 0, 0, 0}
  };
  int [][][] LinePiece = {LinePiece1, LinePiece2, LinePiece3, LinePiece3};
  int [][][] LPiece = {LPiece1, LPiece2, LPiece3, LPiece4};
  int [][][] BLPiece = {BLPiece1, BLPiece2, BLPiece3, BLPiece4};
  int [][][] SquarePiece = {SquarePiece1, SquarePiece1, SquarePiece1, SquarePiece1};
  int [][][] ZPiece = {ZPiece1, ZPiece2, ZPiece3, ZPiece3};
  int [][][] BZPiece = {BZPiece1, BZPiece2, BZPiece3, BZPiece3};
  int [][][] TPiece = {TPiece1, TPiece2, TPiece3, TPiece4};
  int[][][][] Pieces = {LinePiece, LPiece, BLPiece, SquarePiece, ZPiece, BZPiece, TPiece};
  int [][] current;
  int rotation;
  int type;
  Block[] blocks;

  public Piece() {
    rotation = (int)(Math.random()*4);
    type = (int)(Math.random()*7);
    current = Pieces[type][rotation];
    blocks = new Block[4];
    int i = 0;
    for (int r = 4; r < 8; r++) {
      for (int c = 0; c < 4; c++) {
        if (current[r-4][c] == 1) {
          blocks[i] = grid[r][c];
          blocks[i].c = color(0);
        }
      }
    }
  }

  public void rotate(boolean left) {
    if (left) {
      rotation = (rotation + 3) % 4;
      current = Pieces[type][rotation];
    } else {
      rotation = (rotation + 1) % 4;
      current = Pieces[type][rotation];
    }
  }
  public boolean checkCollisons(){
    for (int i=0;i<4;i++){
      if (grid[blocks[i].x][blocks[i].y-1].c!=color(0)){
        return true;
      }
    }
    return false;
  }
  
  public void moveDown(){
    for (Block block : blocks){
      block.c = color(255);
      grid[block.x][block.y - 1].c = color(0);
    }
  }
  
  public void moveLeft(){
    for (Block block : blocks){
      block.c = color(255);
      grid[block.x - 1][block.y].c = color(0);
    }
  }
  
  
  public void moveRight(){
    for (Block block : blocks){
      block.c = color(255);
      grid[block.x + 1][block.y].c = color(0);
    }
  }
}