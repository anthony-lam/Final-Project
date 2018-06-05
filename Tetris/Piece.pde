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
  color[] colors = {color(255,0,0),color(0,0,255),color(255,165,0),color(255,255,0),color(0,255,0),  color(255,0,255),color(0,255,255)};
  Block[] blocks;

  public Piece() {
    rotation = (int)(Math.random()*4);
    type = (int)(Math.random()*7);
    current = Pieces[type][rotation];
    blocks = new Block[4];
    int i = 0;
    for (int r = 0; r < 4; r++) {
      for (int c = 0; c < 4; c++) {
        if (current[r][c] == 1) {
          blocks[i] = new Block(r,c,colors[type]);
          i++;
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
  public boolean checkCollisions(){
    int[] cols ={-1,-1,-1,-1,-1,-1,-1,-1,-1,-1};
    for (int i=0;i<4;i++){
      int x =blocks[i].x;
      int y =blocks[i].y;
      if (y>cols[x]){
        cols[x]=y;
      }
    }
    for(int i=0;i<10;i++){
      if (cols[i]!=-1 && (cols[i]==23 || grid[cols[i]+1][i].c != color(255))){
        return true;
      }
    }
    return false;
  }
  
  public void moveDown(){
    for (Block block : blocks){
      grid[block.y][block.x].c=color(255);
    }
    for (Block block : blocks){
      block.y+=1;
      grid[block.y][block.x].c=block.c;
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
