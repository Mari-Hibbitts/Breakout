void end(){

 
image(gif[f], 0, 0, width, height);
  f = f + 1;
  if (f == numberOfFrames) f = 0;
  
  fill(255);
  strokeWeight(5);
  stroke(stroke);
  tactile(250, 450, 425, 525);
  rect(250, 425, 200, 100);
  
  textFont(font2);
  fill(0);
  textSize(50);
  text("exit.", 345, 495);


}

void endClicks(){

  if (mouseX > 250 && mouseX < 450 && mouseY > 425 && mouseY < 525){
  exit();
  }
}
 
