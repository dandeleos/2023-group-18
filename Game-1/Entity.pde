class Entity
{
  Body body;
  Health health;
  Physics physics;
  View view;
  Entity target;
  
  private boolean destroyed;
  
  void update()
  {
    if (physics != null)
    {
      physics.update();
    }
  }
  
  void render()
  {
    if (view != null && view.shouldDisplay)
    {
      view.render();
    }
  }
  
  void destroy()
  {
    destroyed = true;
    
    if (view != null)
    {
      view.shouldDisplay = false;
    }
    
  }
  
  Body getBody()
  {
    return body;
  }
  
  void setBody(Body body)
  {
    this.body = body;
  }
  
  Health getHealth()
  {
    return health;
  }
  
  void setHealth(Health health)
  {
    this.health = health;
  }
  
  Physics getPhysics()
  {
    return physics;
  }
  
  void setPhysics(Physics physics)
  {
    this.physics = physics;
  }
  
  View getView()
  {
    return view;
  }
  
  void setView(View view)
  {
    this.view = view;
  }
  
  boolean isDestroyed()
  {
    return destroyed;
  }
  
  void setTarget(Entity target)
  {
    this.target = target;
  }
  
  Entity getTarget()
  {
    return target;
  }
  
}
