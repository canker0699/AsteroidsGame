Spaceship ufo;
Star[] stars;
boolean leftPressed=false,rightPressed=false,upPressed=false,downPressed=false,spacePressed=false;
void setup(){
  size(800,600);
  smooth();
  ufo=new Spaceship();
  ufo.init();
  stars=new Star[160];
  for(int i=0;i<stars.length;i++)stars[i]=new Star();
}
void draw(){
  background(8,12,24);
  for(int i=0;i<stars.length;i++)stars[i].show();
  if(leftPressed)ufo.turn(-4);
  if(rightPressed)ufo.turn(4);
  if(upPressed)ufo.accelerate(0.18);
  if(downPressed)ufo.decelerate(0.1);
  if(spacePressed){ufo.hyperspace();spacePressed=false;}
  ufo.move();
  ufo.show();
}
void keyPressed(){
  if(key=='a'||key=='A')leftPressed=true;
  if(key=='d'||key=='D')rightPressed=true;
  if(key=='w'||key=='W')upPressed=true;
  if(key=='s'||key=='S')downPressed=true;
  if(key==' ')spacePressed=true;
}
void keyReleased(){
  if(key=='a'||key=='A')leftPressed=false;
  if(key=='d'||key=='D')rightPressed=false;
  if(key=='w'||key=='W')upPressed=false;
  if(key=='s'||key=='S')downPressed=false;
}
