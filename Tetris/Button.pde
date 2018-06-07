public class Button {
  private int x;
  private int y;
  private int w;
  private int h;
  private String text;

  public Button(int x, int y, int w, int h, String text) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.text = text;
  }

  public void add() {
    rectMode(CENTER);
    textAlign(CENTER);
    rect(x, y, w, h);
    fill(0);
    text(text, x, y);
    rectMode(CORNER);
  }

  public boolean over() {
    return mouseX > x - w && mouseX < x + w && mouseY > y - h && mouseY < y + h;
  }
  
}
