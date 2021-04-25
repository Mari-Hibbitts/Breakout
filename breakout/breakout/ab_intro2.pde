void intro2(){
background(paleYellow);
image(border2, 0, 0, 700, 600);

 textFont(font1);
  fill(0);
  textSize(80);
  text("instructions", 350, 70);
  
  fill(0);
  textFont(font2);
  textSize(40);
  text("You have three lives", 200, 170);
  text("lives lost when you miss the ball", 295, 230);
  text("Break all the 'bricks' to win", 260, 290);
  text("Click anywhere in the game to pause", 310, 350);
  text("Use arrow keys to move paddle", 278, 410);
  
  //start button 

  fill(255);
  tactile(250, 450, 475, 575);
    stroke(stroke);
  rect(250, 475, 200, 100);
  fill(0);
  textSize(60);
  text("begin!", 350, 550);
}

void intro2Clicks(){
if (mouseX > 250 && mouseX < 450 && mouseY > 475 && mouseY <575){
mode = GAME;

  minim = new Minim (this);
    hmm = minim.loadFile("hmm.mp3");
    hmm.play();
}
}
