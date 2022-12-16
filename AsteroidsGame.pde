//your variable declarations here
Spaceship spaceship = new Spaceship();
Star [] Starfield = new Star[200];
ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();
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
