public class Button {
  private int x;
  private int y;
  private int w;
  private int h;
  private String text;
  private boolean active;

  public Button(int x, int y, int w, int h, String text) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.text = text;
  }

  public void add() {
    active = true;
    rectMode(CENTER);
    textAlign(CENTER);
    rect(x, y, w, h);
    fill(0);
    text(text, x, y);
    fill(255);
    rectMode(CORNER);
  }

  public boolean over() {
    return mouseX > x - w && mouseX < x + w && mouseY > y - h && mouseY < y + h;
  }
  
  public boolean active(){
   return active; 
  }
  
  public void deactivate(){
    active = false;
  }
  
}
