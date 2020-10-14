void gameover() {
  background(255, 0, 0);
  theme.pause();
  gameover.play();
  
  if (score > highscore) {
    highscore = score;
  }
  fill(black);
  textSize(80);
  text("Game Over", width/2, height/3);
  textSize(40);
  text("Highscore: " + highscore, width/2, height/2);
  
  
  //exit button
  
  if (mouseX > 500 && mouseX < 700 && mouseY > 600 && mouseY < 700) {
  stroke(blue);
  strokeWeight(6);
  fill(lightblue);
  rect(500, 600, 200, 100);
  } else {
  stroke(black);
  strokeWeight(6);
  fill(lightblue);
  rect(500, 600, 200, 100); 
  }
  textSize(60);
  fill(black);
  text("Quit", 600, 650);
}

void gameoverClicks() {
  mode = INTRO;
  Reset();
  theme.rewind();
   if (mouseX > 500 && mouseX < 700 && mouseY > 600 && mouseY < 700) {
     exit();
   }
}
