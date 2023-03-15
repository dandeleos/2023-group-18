class Health
{
  int healthPoints;
  Entity entity;
  
  private int HIT = 50;
  
  Health(Entity e)
  {
    entity = e;
    healthPoints = 100;
  }
  
  void reduceHealth()
  {
    healthPoints -= HIT;
  }
  
  boolean isDead()
  {
    return healthPoints <= 0;
  }
  
}
