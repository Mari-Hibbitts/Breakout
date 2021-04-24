void mouse() {
}

void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == INTRO2){
  intro2Clicks();
  } else if (mode == END){
  endClicks();
  }
}
