void options () {
  background(black);
  
  imgW = map(sliderX, 200, 400, 20, 200);
  imgH = map(sliderX, 200, 400, 20, 200); 
  
  imageMode(CORNER);
  SelectButton (earth, 100, 100, 150, 150);
  SelectButton (venus, 300, 100, 150, 150);
  SelectButton (saturn, 100, 300, 180, 150);
  SelectButton (sun, 300, 300, 150, 150);
  SelectButton (comet, 500, 200, 220, 150);
    
  //slider 
  if (dist(sliderX, 650, mouseX, mouseY) < 15) {
    strokeWeight(8);
    stroke(red);
    fill(lightblue);
    line(sliderX, 650, 400, 650);
    circle(sliderX, 650, 30);
    stroke(lightblue);
    line(200, 650, sliderX-23, 650);
  } else {
    strokeWeight(8);
    stroke(lightblue);
    fill(lightblue);
    line(200, 650, 400, 650);
    circle(sliderX, 650, 30);
  }
  
   
  //indicator
  imageMode(CENTER);
  fill(black);
  noStroke();
  circle(circleX, circleY, imgW);
  
  if (SelectedImage == earth || SelectedImage == venus || SelectedImage == sun) {
  image(SelectedImage, circleX, circleY, imgW, imgH);
  } else if (SelectedImage == saturn) {
  image(SelectedImage, circleX, circleY, imgW*1.2, imgH);
  } else if (SelectedImage == comet) {
  image(SelectedImage, circleX, circleY, imgW*1.5, imgH);
  }
  
  
  //return button
 if (mouseX > 600 && mouseX < 750 && mouseY > 50 && mouseY < 150) {
    strokeWeight(8);
    stroke(red);
    fill(lightblue);
  } else {
    strokeWeight(2);
    noStroke();
    fill(lightblue);
  }
  textSize(25);
  rect(600, 50, 120, 60, 10);
  fill(0);
  text("Okay", 660, 80);
}

void optionsClicks() {
  if (mouseX > 600 && mouseX < 750 && mouseY > 50 && mouseY < 150) {
  mode = INTRO;
  }
}
