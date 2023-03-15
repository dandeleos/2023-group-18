class HealthBar {
  int x, y, width, height;
  Health health;
  float healthPercentage;
  
  HealthBar(Health health, int width, int height) {
    this.health = health;
    this.width = width;
    this.height = height;
    x = 10;  // Set x-coordinate to 10 to position the health bar in the top left corner
    y = 10;  // Set y-coordinate to 10 to position the health bar in the top left corner
    update();
  }
  
  
  void update() {
    healthPercentage = (float) health.healthPoints / 100;
  }
  
 
  
  void display() {
    fill(255, 0, 0);
    rect(x, y, width, height);
    fill(0, 255, 0);
    rect(x, y, width * healthPercentage, height);
  }
}
