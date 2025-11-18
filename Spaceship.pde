class Spaceship extends Floater{
  private int[] xCorners2,yCorners2; private int corners2; private color c2;
  Spaceship(){corners2=3;xCorners2=new int[]{16,-12,-12};yCorners2=new int[]{0,-10,10};c2=color(100,200,255);myXspeed=0;myYspeed=0;myPointDirection=0;}
  public void init(){myCenterX=width*0.5;myCenterY=height*0.5;corners=corners2;xCorners=xCorners2;yCorners=yCorners2;myColor=c2;}
  public void hyperspace(){myCenterX=random(width);myCenterY=random(height);myPointDirection=random(360);myXspeed=0;myYspeed=0;}
  public void move(){super.move();myXspeed*=0.985;myYspeed*=0.985;if(abs(myXspeed)<0.0008)myXspeed=0;if(abs(myYspeed)<0.0008)myYspeed=0;}
  public void accelerate(float a){float r=radians(myPointDirection-90);myXspeed+=a*cos(r);myYspeed+=a*sin(r);}
  public void decelerate(float a){myXspeed*=(1-a);myYspeed*=(1-a);}
  public void show(){super.show();} // keep it simple; optional visual effects can be added
}
