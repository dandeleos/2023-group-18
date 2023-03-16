class TankWar
{
  private ArrayList<Entity> gameEntities;
  private EnemyTank enemy;
  
  TankWar()
  {
    gameEntities = new ArrayList<>();
  }
  
  void startGame()
  {
    Tank tank = new Tank();
    EnemyTank enemy = new EnemyTank();
    tank.setTarget(enemy);
    
    gameEntities.add(tank);
    gameEntities.add(enemy);
  }
  
  void update()
  {
    
   Iterator<Entity> iterator = gameEntities.iterator();

   try 
   {  
     while (iterator.hasNext())
     {
       Entity e = iterator.next();
     
       e.update();
     
       if (e.isDestroyed())
       {
         iterator.remove();
       }
     
   }
    
  }
  catch (Exception e)
  {
    e.printStackTrace();
  }
  
 }
  
  void render()
  {
    for (Entity e: gameEntities)
    {
        e.render();
    }
  }
  
  Health getEnemyHealth()
  {
    return enemy.getHealth();
  }
  
}
  
