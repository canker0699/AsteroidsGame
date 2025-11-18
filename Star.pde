class Star{
  private float x,y; private color c;
  Star(){x=random(width);y=random(height);c=color(random(150,255),random(150,255),random(150,255));}
  public void show(){fill(c);noStroke();triangle(x,y-2,x-2,y+2,x+2,y+2);}
}
