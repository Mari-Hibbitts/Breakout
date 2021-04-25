void pause() {
  background(paleYellow);
  image(border, 0, 0, 700, 600);
  textFont(font1);
  fill(0);
  textSize(100);
  text("PAUSED", 350, 300);
  textFont(font2);
  text("click to resume", 350, 500);
}

void pauseClicks() {
  mode = GAME;
}
