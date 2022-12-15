//your variable declarations here
Spaceship spaceship = new Spaceship();
Asteroid a = new Asteroid();
Star [] Starfield = new Star[200];
public void setup() {
  //your code here
  size(1000, 1000);
  for (int i = 0; i < Starfield.length; i++) {
    Starfield[i] = new Star();
  }
}
public void draw() {
  //your code here
  background(0);
  for (int i = 0; i < Starfield.length; i++) {
     Starfield[i].show();
  }
  spaceship.move();
  spaceship.show();
  a.show();
}
public void keyPressed() {
  if (key == 'a') {
    spaceship.turn(-20);
  }
  if (key == 'd') {
    spaceship.turn(20);
  }
  if (key == 'w') {
    spaceship.accelerate(0.8);
  }
  if (key == 's') {
    spaceship.accelerate(-0.8);
  }
  if (key == 'h'){
    //hyperspace
    spaceship.hyperspace();
  }
}


class Asteroid extends Floater
{
  public double rotSpeed;
  public Asteroid(){
    corners = 6;
    xCorners = new int[] {-11, 7, 13, 6, -11, -5};
    yCorners = new int[] { -8, -8, 0, 10, 8, 0};
    myColor = color(150);
    myCenterX = Math.random()*400;
    myCenterY = Math.random()*400;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = Math.random()*2*PI;
    rotSpeed = 1;
  }
  public void move (){
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




