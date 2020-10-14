void game() {
  background(black);
 
  fill(blue);
  textSize(40);
  text("score: " + score, width/2, 50);
  text("Lives: " + lives, width/2, 100);
  
  //pause button
  noStroke();
  fill(purple);
  
  if (dist(mouseX, mouseY, 100, 100) < 40) {
  circle(100, 100, 80);
  stroke(black);
  strokeWeight(8);
  fill(black);
  triangle(87, 85, 112, 100, 87, 115);
  } else {
  circle(100, 100, 80);
  stroke(black);
  strokeWeight(8);
  line(87, 80, 87, 120);
  line(112, 80, 112, 120);
  }
  
  //display target
  if (SelectedImage == earth) {
    image(SelectedImage, x, y, imgW, imgH);
  } else if (SelectedImage == venus) {
    image(SelectedImage, x, y, imgW, imgH);
  } else if (SelectedImage == sun) {
    image(SelectedImage, x, y, imgW, imgH);
  } else if (SelectedImage == saturn) {
    image(SelectedImage, x, y, imgW*1.2, imgH);
  } else if (SelectedImage == comet) {
    image(SelectedImage, x, y, imgW*1.5, imgH);
  }
  
  //moving
  x = x + vx;
  y = y + vy;
  
  //planet bouncing 
  if (x < imgW/2 && SelectedImage == earth || x > width-imgW/2 && SelectedImage == earth) {
    vx = vx * -1;
  }
  if (y < imgH/2 && SelectedImage == earth || y > height-imgH/2 && SelectedImage == earth) {
    vy = vy * -1;
  }
  
  if (x < imgW/2 && SelectedImage == venus || x > width-imgW/2 && SelectedImage == venus) {
    vx = vx * -1;
  }
  if (y < imgH/2 && SelectedImage == venus || y > height-imgH/2 && SelectedImage == venus) {
    vy = vy * -1;
  }
  
  if (x < imgW/2 && SelectedImage == sun || x > width-imgW/2 && SelectedImage == sun) {
    vx = vx * -1;
  }
  if (y < imgH/2 && SelectedImage == sun || y > height-imgH/2 && SelectedImage == sun) {
    vy = vy * -1;
  }
  
  
  //saturn bouncing
  if (x < imgW*1.2/2 && SelectedImage == saturn || x > width-imgW*1.2/2 && SelectedImage == saturn) {
    vx = vx * -1;
  }
  if (y < imgH/2 && SelectedImage == saturn || y > height-imgH/2 && SelectedImage == saturn) {
    vy = vy * -1;
  }
  
  //comet bouncing
  if (x < imgW*1.5/2 && SelectedImage == comet || x > width-imgW*1.5/2 && SelectedImage == comet) {
    vx = vx * -1;
  }
  if (y < imgH/2 && SelectedImage == comet || y > height-imgH/2 && SelectedImage == comet) {
    vy = vy * -1;
  }
  
}
  

void gameClicks() {
  if (dist(mouseX, mouseY, x, y) < imgW/2 && SelectedImage == earth || dist(mouseX, mouseY, x, y) < imgW/2 && SelectedImage == venus || dist(mouseX, mouseY, x, y) < imgW/2 && SelectedImage == sun) {
    score = score + 1;
    vx = vx * 1.1;
    vy = vy * 1.1;
    coin.rewind();
    coin.play();
  } else if (dist(mouseX, mouseY, x, y) < imgW*1.2/2 && SelectedImage == saturn) {
    score = score + 1;
    vx = vx * 1.1;
    vy = vy * 1.1;
    coin.rewind();
    coin.play();
  } else if (dist(mouseX, mouseY, x, y) < imgW*1.5/2 && SelectedImage == comet) {
    score = score + 1;
    vx = vx * 1.1;
    vy = vy * 1.1;
    coin.rewind();
    coin.play();
  } else if (dist(mouseX, mouseY, 100, 100) < 40) {
    mode = PAUSE;
  } else {
    lives = lives - 1;
    bump.rewind();
    bump.play();
    if (lives == 0) mode = GAMEOVER;
  }
}
