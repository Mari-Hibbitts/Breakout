void gameover() {

  background (paleYellow);
  
   image(border, 0, 0, 700, 600);
  if (lives == 0){
  textFont(font1);
  fill(0);
  textSize(ts);
  text("GAME OVER!", 350, 300);
  textSize(10);
  textFont(font2);
  text("you lost.", 350, 400);}
  
  if (points > 51){
    textFont(font1);
  fill(0);
  textSize(80);
  text("GAME COMPLETE!", 350, 300);
  textSize(10);
  textFont(font2);
  text("you win!", 350, 400);
  }

  //restart button
  fill(255);
  strokeWeight(5);
  tactile(125, 325, 425, 525);
  stroke(stroke);
  rect(125, 425, 200, 100);

  //button font (try again if loss, replay if win)
  
  if (lives == 0){
  textFont(font2);
  fill(0);
  textSize(50);
  text("try again?", 228, 495);}
    if (points > 51){
  textFont(font2);
  fill(0);
  textSize(50);
  text("Replay?", 228, 495);}

  //exit button
  fill(255);
  strokeWeight(5);
  tactile(390, 590, 425, 525);
  stroke(stroke);
  rect(390, 425, 200, 100);

  //button test (give up if lose, exit if win)
  if (lives == 0){
  textFont(font2);
  fill(0);
  textSize(50);
  text("give up.", 490, 495);}
  if (points > 51){
  textFont(font2);
  fill(0);
  textSize(50);
  text("leave", 490, 495);
  }
}

void gameoverClicks() {
  

  
  if (mouseX > 125 && mouseX < 325 && mouseY > 425 && mouseY < 525){
mode = INTRO;
peachr.pause();
timer = 0;
lives = 3;
n = 52;
  x = new int [n];
  y = new int [n];
  alive = new boolean [n];
  brickd = 30;
  tempx = 50;
  tempy = 50;

  int i = 0;
  while (i<n) {
    x[i] = tempx;
    y[i] = tempy;
    alive [i] = true;
    tempx = tempx + 50;
    if ( tempx == width ) {
      tempx = 50;
      tempy = tempy + 50;
    }
    i = i + 1;
  }
  fontTimer = 0;
  }
  
  if (mouseX > 390 && mouseX < 590 && mouseY > 425 && mouseY < 525){
mode = END;
}
}
