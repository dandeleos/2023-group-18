/*
TankWar Game
*/


TankWar t;
PImage img;
HealthBar hb;

void setup()
{
  size(1000, 700);
  img = loadImage("image1 copy.jpg");
  img.resize(1000,700);
  t = new TankWar();
  t.startGame();
  //hb = new HealthBar(t.getEnemyHealth(), 10, 10);
}

void draw()
{
  background(img);
  

  t.update(); 
  t.render();
}
