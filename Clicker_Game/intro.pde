void intro() {
  theme.play();
  background(black);
  
  fill(red);
  textFont(SpaceFont);
  text("The Space", width/2, 220);
  text("Clicker Game", width/2, 300);
  
  
  MenuButton("Start", 100, 400, 200, 100);
  
  MenuButton("Option", 450, 400, 200, 100);
  
  //rectButton(
}

void introClicks() {
  if (mouseX > 100 && mouseX < 300 && mouseY > 400 && mouseY < 500) {
    mode = GAME;
}
  if (mouseX > 450 && mouseX < 650 && mouseY > 400 && mouseY < 500) {
    mode = OPTION;
  }
}
