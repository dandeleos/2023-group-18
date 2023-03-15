class EnemyTank extends Tank
{
 EnemyTank()
  {
    body = new Body(this);
    body.setX(150);
    body.setY(260);
    body.setAngle(0);

    body.shape = loadImage("Enemy_Tank.png");
    body.shape.resize(40, 40);
    setBody(body);
    view = new View(this);
    setView(view);
    health = new Health(this);
    setHealth(health);
  }
  
  void update()
  {
    if (getHealth().isDead())
    {
      this.destroy();
    }
    
    
  }
}
