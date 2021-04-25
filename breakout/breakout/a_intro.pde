void intro() {

  timer = timer +1;
  if (timer == 1){
  minim = new Minim (this);
    pr = minim.loadFile("pineapplerag.mp3");
    pr.play();}
  background (paleYellow);
 

  //border and notes

  image(border, 0, 0, 700, 600);

  //font
  textFont(font1);
  fill(0);
  textSize(ts);
  text("BREAKOUT", 350, ty);

  //font movement
  ty=ty-5;
  if (ty < 225) {
    ty = 225;

  }
  fill(255);
  strokeWeight(5);
  stroke(stroke);
  tactile(250, 450, 425, 525);
  rect(250, 425, 200, 100);
  
  
  //button font
    textFont(font2);
  fill(0);
  textSize(50);
  text("START", 345, 495);
  
  //add some kind of border or additional artwork
}
void introClicks() {
  if (mouseX > 250 && mouseX < 450 && mouseY > 425 && mouseY < 525) {
    mode = INTRO2;
  }
}
