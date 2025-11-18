class Spaceship extends Floater {
  private color shipColor;

  Spaceship() {
    corners = 3;
    xCorners = new int[]{16,-12,-12};
    yCorners = new int[]{0,-10,10};
    shipColor = color(100,200,255);
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }

  public void init() {
    myCenterX = width*0.5f;
    myCenterY = height*0.5f;
  }

  public void hyperspace() {
    myCenterX = (float)(Math.random()*width);
    myCenterY = (float)(Math.random()*height);
    myPointDirection = (float)(Math.random()*360);
    myXspeed = 0;
    myYspeed = 0;
  }

  @Override
  public void move() {
    super.move();
    float d = 0.985f;
    myXspeed *= d;
    myYspeed *= d;
    if(abs(myXspeed)<0.0008) myXspeed=0;
    if(abs(myYspeed)<0.0008) myYspeed=0;
  }

  public void accelerate(float a) {
    float rad = radians(myPointDirection-90);
    myXspeed += a*cos(rad);
    myYspeed += a*sin(rad);
  }

  public void decelerate(float a) {
    myXspeed *= (1-a);
    myYspeed *= (1-a);
  }

  @Override
  public void show() {
    pushMatrix();
    translate((float)myCenterX,(float)myCenterY);
    rotate(radians(myPointDirection));
    noStroke(); fill(20,20); ellipse(0,8,72,18);
    stroke(180); strokeWeight(1); fill(80,160,220); ellipse(0,0,78,30);
    noStroke(); fill(200,240,255,220); ellipse(0,-8,36,22);
    for(int i=0;i<6;i++){
      float a=map(i,0,6,-PI,PI);
      float lx=cos(a)*28; float ly=sin(a)*8;
      fill(200+i*6,140+i*6,60+i*4); ellipse(lx,ly,6,6);
    }
    float spd = sqrt(myXspeed*myXspeed + myYspeed*myYspeed);
    if(spd>0.6){ noStroke(); fill(255,160,20,200); triangle(-14,14,14,14,0,26); }
    popMatrix();
  }
}
