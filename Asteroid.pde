class Asteroid extends Floater
{
  public double rotSpeed;
   public Asteroid(int x, int y) {
    corners = 6;
    xCorners = new int[] {-11, 7, 13, 6, -11, -5};
    yCorners = new int[] { -8, -8, 0, 10, 8, 0};
    myColor = color(150);
    myCenterX = Math.random()*1000;
    myCenterY = Math.random()*1000;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = Math.random()*2*PI;
    rotSpeed = 1;
  }
  public void move (){
    myXspeed += Math.random()*0.1 - 0.05;
  myYspeed += Math.random()*0.1 - 0.05;
  myCenterX += myXspeed;    
  myCenterY += myYspeed;
  turn(rotSpeed);
  super.move();
  }
  public int getX (){
    return (int)myCenterX;
  }
  public int getY (){
    return (int)myCenterY;
  }
}
