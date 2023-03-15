class Body
{
  private float xPosition;
  private float yPosition;
  PImage shape;
  private float angle;
  Entity entity;
  
  Body(Entity e)
  {
    entity = e;
  }
  
  boolean hasCollided(Entity target)
  {
    float bodyLeft = xPosition;
    float bodyRight = xPosition + shape.width;
    float bodyTop = yPosition;
    float bodyBottom = yPosition + shape.height;
    
    float entityLeft = target.getBody().xPosition;
    float entityRight = target.getBody().xPosition + target.getBody().getShape().width;
    float entityTop = target.getBody().yPosition;
    float entityBottom = target.getBody().yPosition + target.getBody().getShape().height;

    
    if (bodyLeft < entityRight && bodyRight > entityLeft &&
    bodyTop < entityBottom && bodyBottom > entityTop)
    {
      return true;
    }
    
    return false;
  }
  
  
  
  PImage getShape()
  {
    return shape;
  }
  
  float getX()
  {
    return xPosition;
  }
  
  float getY()
  {
    return yPosition;
  }
  
  float getAngle()
  {
    return angle;
  }
  
  void setX(float x)
  {
    xPosition = x;
  }
  
  void setY(float y)
  {
    yPosition = y;
  }
  
  void setAngle(float x)
  {
    angle = x;
  }
  
}
