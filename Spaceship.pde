
class Spaceship extends Floater  
{   
    //your code here
    public Spaceship(){
      corners = 4;
      xCorners = new int[]{-8, 16, -8, -2};
      yCorners = new int[]{-8, 0, 8, 0};
      myColor = color(255,255,255);
      myCenterX = 200;
      myCenterY = 200;
      //myXspeed = Math.random()*2;
      //myYspeed = Math.random()*2;
      myXspeed = 0;
      myYspeed = 0;
      //myPointDirection = Math.random()*2*Math.PI;
      myPointDirection = 0;
    }
     public void setXspeed(double x){
       myXspeed = x;
     }
     public void hyperspace(){
       myXspeed = 0;
       myYspeed = 0;
       myCenterX = Math.random()*1000;
       myCenterY = Math.random()*1000;
       myPointDirection = Math.random()*360;
     }
}
