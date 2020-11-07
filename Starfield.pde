Particle[] parts = new Particle[1000];
void setup()
{
  size(500,500);
  for(int i = 0; i < parts.length;i++){
   parts[i] = new Particle();
   parts[0] = new OddballParticle();
  }
}
void draw()
{
  background(0);
  for(int i = 0; i < parts.length; i++){
  parts[i].show();
  parts[i].move();
  }
}
class Particle
{
  double myX, myY, mySpeed, myAngle;
  int myColor;
  Particle()
  {
   myX = Math.random()*200;
   myY = Math.random()*200;
   myAngle = Math.random()*4*Math.PI;
   mySpeed = Math.random()*10;
   myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));   
  }
  void move()
  {
    myX = myX + myAngle;
    myY = myY + myAngle;
  }
  void show()
  {
    fill(myColor);
   ellipse((float)myX,(float)myY,20,20); 
  }
}

class OddballParticle extends Particle//inherits from Particle
{
  OddballParticle()
 { 
   myX = Math.random()*200;
   //myY = Math.random()*200;
   //myX=0;
   myY=225;
   myAngle = Math.random()*2*Math.PI;
   mySpeed = Math.random()*10;
 }
 void move()
 {
   myX = myX + (int)(Math.random()*2)+1;
   myY = myY + (int)(Math.random()*2)+1;
 }
 void show()
 {
   fill(100);
   ellipse((int)myX,(int)myY,20,20);
 }
}
