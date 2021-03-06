void movePlayers() {
  if(wPressed || proximity >= 100 && proximity <= 490) {
    player1.moveUp();
  }
  if(sPressed || proximity > 500 ) {
    player1.moveDown();
  }
  if(upPressed) {
    player2.moveUp();
  }
  if(downPressed) {
    player2.moveDown();
  }
}

void keyPressed() {
  if (key == 'w' || key == 'W') {
    wPressed = true;
  }
  if (key == 's' || key == 'S') {
    sPressed = true;
  }
  if (key == CODED) {
    if (keyCode == UP) {
      upPressed = true;
    }
    if (keyCode == DOWN) {
      downPressed = true;
    }
  }
}

void keyReleased() {
  if (key == 'w' || key == 'W') {
    wPressed = false;
  }
  if (key == 's' || key == 'S') {
    sPressed = false;
  }
  if (key == CODED) {
    if (keyCode == UP) {
      upPressed = false;
    }
    if (keyCode == DOWN) {
      downPressed = false;
    }
  }
}
