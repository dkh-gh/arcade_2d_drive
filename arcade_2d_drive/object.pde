
class Pers {
  //boolean keyboardControls = false;
  
  float x = 0, y = 0, s = 1, pX = 0, pY = 0, d = 10;
  
  Pers() {}
  
  void update() {
    
    if(keyUp) y -= s;
    if(keyDown) y += s;
    if(keyLeft) x -= s;
    if(keyRight) x += s;
    collide();
    pX = x; pY = y;
    circle(x, y, d);
  }
  
  void collide() {
    for(int i = 0; i < wallsCount; i++) {
      if(x+d/2 > walls[i].x1 && x-d/2 < walls[i].x2 && y+d/2 > walls[i].y1 && y-d/2 < walls[i].y2) {
        x = pX; y = pY;
      }
    }
  }
  
}

class Wall {
  
  float x1,y1, x2,y2;
  Wall(float X1, float Y1, float X2, float Y2) {
    x1 = X1; x2 = X2; y1 = Y1; y2 = Y2;
  }
  
  void update() {
    rect(x1,y1, x2-x1, y2-y1);
  }
  
}

Wall[] walls = new Wall[10000];
int wallsCount = 0;
void addWall(float X1, float Y1, float X2, float Y2) {
  walls[wallsCount] = new Wall(X1, Y1, X2, Y2);
  wallsCount++;
}

void updateWalls() {
  for(int i = 0; i < wallsCount; i++) {
    walls[i].update();
  }
}
