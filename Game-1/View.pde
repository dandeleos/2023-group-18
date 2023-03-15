class View
{
  boolean shouldDisplay;
  Entity entity;
  
  View(Entity e)
  {
    entity = e;
    shouldDisplay = true;
  }
  
  void render()
  {
    noStroke();
    image(entity.getBody().getShape(), entity.getBody().getX(), entity.getBody().getY());  
  
  }
  
}
