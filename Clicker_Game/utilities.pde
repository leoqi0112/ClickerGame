void MenuButton(String text, float x, float y, float w, float h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    strokeWeight(8);
    stroke(red);
    fill(lightblue);
  } else {
    strokeWeight(2);
    noStroke();
    fill(lightblue);
  }
  textSize(40);
  rect(x, y, w, h, 10);
  fill(0);
  text(text, x+100, y+40);
}

void SelectButton(PImage pic, float x, float y, float w, float h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    stroke(blue);
    strokeWeight(4);
    fill(black);
  } else {
    noStroke();
    fill(black);
  }
  rect(x, y, w, h);
  image(pic, x, y, w, h);
}

void controlSlider() { 
  if (mouseX > 200 && mouseX < 400 && mouseY > 620 && mouseY < 680) {
    sliderX = mouseX;
  }
}

void Reset() {
  x = width/2;
  y = height/2;
  d = 100;
  vx = random(-2,2);
  vy = random(-2, 2);
  
  score = 0;
  lives = 3;
  sliderX = 300;
}
