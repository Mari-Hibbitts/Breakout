void game() {

  pr.pause();
   
 

  background (#96A3B9);
  stroke(255);
  strokeWeight(5);

  //bricks??
  fill(255);
  int i = 0;
  while (i < n) {
    if (alive [i] == true) {
      manageBrick(i);
    }
    i = i + 1;
  }

//lives and points display 

textFont(font2);
  fill(0);
  textSize(20);
  text("lives:"+lives, 50, 580);
  text("points:" +points, 650, 580);
  
  
  //paddle
  fill(paleYellow);
  circle(px, py, pd);
  //ball
  fill(255);
  circle(ballx, bally, balld);
  //wait 
  scoretimer = scoretimer + 1;
  //moving
  if (scoretimer > 50) {
    ballx = ballx + vx;
    bally = bally + vy;
  }

  //bouncing 

  if (ballx < 0 + balld/2 || ballx > width - balld/2) {
    vx = vx * -1;
     minim = new Minim (this);
    hit = minim.loadFile("hit.mp3");
    hit.play();
  }

  if (bally < 0 + balld/2 || bally > height - balld/2) {
    vy = vy * -1;
    minim = new Minim (this);
    hit = minim.loadFile("hit.mp3");
    hit.play();
  }

  //paddle collision
  if (dist(ballx, bally, px, py)<=(balld/2 + pd/2)) {
    vx = (ballx - px)/9;
    vy = (bally - py)/9;
    minim = new Minim (this);
    hit = minim.loadFile("hit.mp3");
    hit.play();
  }

  //lives
  if (bally > 595) {
    lives = lives - 1;
    ballx = width/2;
    bally = height/2;
    scoretimer = 0;
  }

  if (lives == 0) {
    mode = GAMEOVER;
        hmm.pause();
    minim = new Minim (this);
    peachr = minim.loadFile("peacherinerag.mp3");
    peachr.play();
  }

  if (points > 41 && points < 43) {
    fontTimer = 0;
    fontTimer = fontTimer + 1;
    if (fontTimer < 100) {
      textFont(font1);
      fill(0);
      textSize(80);
      text("Almost done...", 350, 300);
    }
  }




  //move paddle
  if (leftkey == true)px = px - 5;
  if (rightkey == true) px = px + 5;
  if (px < 49) {
    px = 50;
  }
  if (px > 649) {
    px = 650;
  }

  if (points > 51) {
    hmm.pause();
    mode = GAMEOVER;

    minim = new Minim (this);
    peachr = minim.loadFile("peacherinerag.mp3");
    peachr.play();
  }
}

void gameClicks() {
  mode = PAUSE;
}

void manageBrick(int i ) {
  if (y[i] == 50)  fill(0);
  if (y[i] == 100) fill (paleYellow);
  if (y[i] == 150) fill(0);
  if (y[i] == 200) fill(paleYellow);
  circle(x[i], y[i], brickd);
  if (dist(ballx, bally, x[i], y[i])<=(balld/2 + brickd/2)) {
    vx = (ballx - x[i])/3;
    vy = (bally - y[i])/3;
    minim = new Minim (this);
    hit = minim.loadFile("hit.mp3");
    hit.play();
    alive [i] = false;
    points = points + 1;
  }
}
