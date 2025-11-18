class Star {
  private float x,y;
  private color c;

  Star() {
    x=(float)(Math.random()*width);
    y=(float)(Math.random()*height);
    c=color((int)(150+Math.random()*105),(int)(150+Math.random()*105),(int)(150+Math.random()*105));
  }

  public void show() {
    fill(c); noStroke(); triangle(x,y-2,x-2,y+2,x+2,y+2);
  }
}
