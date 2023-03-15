class Bullet extends Entity
{
  private int age;
  
  Bullet()
  {
    Physics p = new Physics(this);
    p.setVelocityX(0.15);
    p.setVelocityY(0.15);
    setPhysics(p);
    body = new Body(this);
    body.shape=loadImage("bullet.png");
    body.shape.resize(20, 20);
    view = new View(this);
    setView(view);
    
    age = 1000;
    
  }
  
  void update()
  {
    super.update();
    age -= 1;
    
    if (getBody().hasCollided(target))
    {
      target.getHealth().reduceHealth();
      this.destroy();
    }
    
    if (age <= 0)
    {
      this.destroy();
    }
    
  }
  
  void render()
  {
     pushMatrix();
     translate(body.getX() -body.getShape().width/2, body.getY() -getBody().getShape().height/2);
     rotate(body.getAngle());
     image(getBody().getShape(), -getBody().getShape().width/2, -getBody().getShape().height/2);
                //translate(0, 0);
     popMatrix();
  }
  
  void setPosition(float x, float y)
  {
    body.setX(x);
    body.setY(y);
  }
}
