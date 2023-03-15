import java.util.Iterator;

class Tank extends Entity
{
  private ArrayList<Bullet> bullets;
  
  Tank()
  {
    body = new Body(this);
    //body.setX(width/2);
    //body.setY(height/2);
    body.setX(860);
    body.setY(270);
    body.setAngle(360);
    body.shape = loadImage("tank.png");
    body.shape.resize(50, 50);
    //imageMode(CENTER);
    setBody(body);
    view = new View(this);
    setView(view);
    
    bullets = new ArrayList();

  }
  
  void update()
  {
    super.update();
    //pushMatrix();
    //      translate(width/2, height/2);
    //      rotate(this.body.getAngle() - 1);
    //      image(body.shape,0,0);
    //      popMatrix();
    if (keyPressed)
    {
      switch(keyCode)
      {
       case LEFT:    
          this.body.setAngle(this.body.getAngle()-0.1);
          break;
          
        case RIGHT:
          this.body.setAngle(this.body.getAngle()+0.1);
          break;
        
        case UP:
          this.body.setY(this.getBody().getY() - 0.02*this.getBody().getShape().height*cos(this.getBody().getAngle()));
          this.body.setX(this.getBody().getX() + 0.02*this.getBody().getShape().width*sin(this.getBody().getAngle()));
          break;
          
        case DOWN:
          this.body.setY(this.getBody().getY() + 0.02*this.getBody().getShape().height*cos(this.getBody().getAngle()));
          this.body.setX(this.getBody().getX() - 0.02*this.getBody().getShape().width*sin(this.getBody().getAngle()));
          break; //<>//
        }
 
    }
    
    if (mousePressed)
    {
      fire();
    }
    
   Iterator<Bullet> iterator = bullets.iterator();
   
   try {
    
   while (iterator.hasNext())
   {
     Bullet b = iterator.next();
     
     b.update();
     
     if (b.isDestroyed())
     {
       iterator.remove();
     }
     
   }
    
  }
 
  
  catch (Exception e)
  {
    
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

    for (Bullet b: bullets)
    {
      b.render();
    }
  }
  
  void fire()
  {
    Bullet bullet = new Bullet();
    bullet.setTarget(this.getTarget());
    bullet.setPosition(body.getX(),body.getY());
    bullet.getBody().setAngle(body.getAngle());
    bullets.add(bullet);
  }
  
  
}
