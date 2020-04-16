
Pers player;

void setup() {
  size(800, 600);
  player = new Pers();
  player.s = 10;
  //player.controls(UP, DOWN, LEFT, RIGHT);
  addWall(100,100, 110, 200);
  addWall(100,100, 210, 110);
}

void draw() {
  background(190);
  player.update();
  updateWalls();
}
