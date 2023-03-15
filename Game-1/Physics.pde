class Physics
{
  private float velocityX;
  private float velocityY;
  private float dragX;
  private float dragY;
  private Entity entity;
  
  Physics(Entity e)
  {
    entity = e;
  }
  
  void update()
  {
    entity.getBody().setY(entity.getBody().getY() - velocityY * entity.getBody().getShape().height*cos(entity.getBody().getAngle()));
    entity.getBody().setX(entity.getBody().getX() + velocityX * entity.getBody().getShape().width*sin(entity.getBody().getAngle()));
  }
  
  float getVelocityX()
  {
    return velocityX;
  }
  
  float getVelocityY()
  {
    return velocityY;
  }
  
  void setVelocityX(float x)
  {
    velocityX = x;
  }
  
  void setVelocityY(float y)
  {
    velocityY = y;
  }

 
}
