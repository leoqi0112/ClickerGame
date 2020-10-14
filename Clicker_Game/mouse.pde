void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  } else if ( mode == OPTION) {
    optionsClicks();
  }
  
  if (mouseX > 100 && mouseX < 250 && mouseY > 100 && mouseY < 250 && mode == OPTION) {
    SelectedImage = earth;
    imgW = 100;
    imgH =100;
  }
  
  if (mouseX > 300 && mouseX < 450 && mouseY > 100 && mouseY < 250 && mode == OPTION) {
    SelectedImage = venus;
    imgW = 100;
    imgH = 100;
  }
  
  if (mouseX > 100 && mouseX < 280 && mouseY > 300 && mouseY < 450 && mode == OPTION) {
    SelectedImage = saturn;
    imgW = 120;
    imgH = 100;
  }
  
  if (mouseX > 300 && mouseX < 450 && mouseY > 300 && mouseY < 450 && mode == OPTION) {
    SelectedImage = sun;
    imgW = 100;
    imgH = 100;
  }
  
  if (mouseX > 500 && mouseX < 720 && mouseY > 200 && mouseY < 350 && mode == OPTION) {
    SelectedImage = comet;
    imgW = 160;
    imgH = 100;
  }
  controlSlider();
 
}

void mouseDragged() {
  controlSlider();
}
