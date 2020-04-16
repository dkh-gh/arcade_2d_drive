
boolean keyUp = false, keyDown = false, keyLeft = false, keyRight = false;

void keyPressed() {
  if(key == CODED) {
    if(keyCode == UP) keyUp = true;
    if(keyCode == DOWN) keyDown = true;
    if(keyCode == LEFT) keyLeft = true;
    if(keyCode == RIGHT) keyRight = true;
  }
}

void keyReleased() {
  if(key == CODED) {
    if(keyCode == UP) keyUp = false;
    if(keyCode == DOWN) keyDown = false;
    if(keyCode == LEFT) keyLeft = false;
    if(keyCode == RIGHT) keyRight = false;
  }
}
