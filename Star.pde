class Star //note that this class does NOT extend Floater
{
  //your code here
  private double myX, myY;
  public Star(){
    myX = Math.random()*1000;
    myY = Math.random()*1000;
  }
  public void show(){
    noStroke();
    fill(255);
    ellipse((float)myX, (float)myY, 3, 3);
  }
}
