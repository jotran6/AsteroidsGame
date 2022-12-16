class Bullet extends Floater
{
  //constructor for the Bullet class
  public Bullet(Spaceship theShip)
  {
    //initialize the properties inherited from the Floater class
    corners = 3;
    xCorners = new int[corners];
    yCorners = new int[corners];
    myColor = color(255, 0, 0);
    myCenterX = theShip.myCenterX;
    myCenterY = theShip.myCenterY;
    myXspeed = theShip.myXspeed;
    myYspeed = theShip.myYspeed;
    myPointDirection = theShip.myPointDirection;

    //accelerate the bullet in the direction it is pointing
    accelerate(6.0);
  }

  //override the show() method of the Floater class
  public void show()
  {
    //draw a circular bullet
    fill(myColor);
    stroke(myColor);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public int getX(){
    return (int) myCenterX;
  }

  public int getY(){
    return (int) myCenterY;
  }
}
