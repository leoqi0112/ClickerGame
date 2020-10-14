//Leo Qi
//1-2 A
//Oct. 9 

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//sound variables
Minim minim;
AudioPlayer theme, coin, bump, gameover;

//MODE VARIABLES
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int OPTION = 4;


//Target Variables
float x, y, d;
float vx, vy; //target velocity
int score;
int lives;
int highscore;

 //palettes
  color blue = #68B2FB;
  color black = #0A0A0A;
  color purple = #7037CD;
  color red = #FC3A51;
  color white = #E8D5B7;
  color lightblue = #CEDEE7;
  
PFont SpaceFont;

//Images
  PImage earth;
  PImage venus;
  PImage saturn;
  PImage sun;
  PImage comet;
  float imgW;
  float imgH;

PImage SelectedImage;

//slider
float sliderX;

float circleX;
float circleY;
  
void setup() {
  size(800, 800, P2D);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  textSize(50);
  
  //target initialization
  x = width/2;
  y = height/2;
  d = 100;
  vx = random(-2, 2);
  vy = random(-2, 2);
  
  score = 0;
  lives = 3;
  highscore = 0;
  
  //minim
  minim = new Minim(this);
  theme = minim.loadFile("mario bros theme.mp3");
  coin = minim.loadFile("coin.wav");
  bump = minim.loadFile("bump.wav");
  gameover = minim.loadFile("gameover.wav");
  
  SpaceFont = createFont("space age.ttf", 80);
  
  //Image Initialization
  earth = loadImage("earth.png");
  venus = loadImage("venus.png");
  saturn = loadImage("saturn.png");
  sun = loadImage("sun.png");
  comet = loadImage("comet.png");
  
  imgW = 100;
  imgH = 100;
  
  SelectedImage = earth;
  
  //initialize slider
  sliderX = 300;
  
  circleX = 600;
  circleY = 650;
  
  imageMode(CENTER);
}

void draw() {
  
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == OPTION) {
    options();
  } else {
    println("Error: Mode = " + mode);
  }
}
