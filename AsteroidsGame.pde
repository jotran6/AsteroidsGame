//your variable declarations here
Spaceship spaceship = new Spaceship();
Star [] Starfield = new Star[200];
ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
public void setup() {
  //your code here
  size(1000, 1000);
  for (int i = 0; i < Starfield.length; i++) {
    Starfield[i] = new Star();
  }

for (int i = 0; i < 10; i++) {
     int x = (int) random(0, width);
    int y = (int) random(0, height);
    asteroids.add(new Asteroid(x, y));
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
for (int i = 0; i < asteroids.size(); i++) {
  Asteroid a = asteroids.get(i);
  a.show();
  a.move();
  float distance = dist(spaceship.getX(), spaceship.getY(), a.getX(), a.getY());
  if (distance < 20) {
    // collision detected, remove asteroid from game
    asteroids.remove(i);
  }
}
 for (int i = 0; i < bullets.size(); i++)
  {
    Bullet b = bullets.get(i);
    b.move();
    b.show();

    //check if the bullet hits an asteroid
    for (int j = 0; j < asteroids.size(); j++)
    {
      Asteroid a = asteroids.get(j);

      //calculate the distance between the bullet and the asteroid
      float distance = dist(b.getX(), b.getY(), a.getX(), a.getY());

      //if the distance is less than a certain threshold, remove the asteroid from the ArrayList
      if (distance < 20)
      {
        asteroids.remove(j);
      }
    }
  } 
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
   if (key == ' ') //space key
  {
    //create a new Bullet object and pass the spaceship as the argument to the constructor
    Bullet bullet = new Bullet(spaceship);

    //add the bullet to the ArrayList
    bullets.add(bullet);
  }
  if (key == 'r')
  {
    //clear the ArrayList of asteroids and bullets
    asteroids.clear();
    bullets.clear();
    //create some new asteroids and add them to the ArrayList
    for (int i = 0; i < 10; i++)
    {
      int x = (int) random(0, width);
      int y = (int) random(0, height);
      asteroids.add(new Asteroid(x, y));
    }
  }
}
