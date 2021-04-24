//marika hibbitts, april 22
/*music credits:
intro: 'pineapple rag' by Scott Joplin 
Game: 'piece i didn't give a name to' by me 
gameover screen: 'peacherine rag' by Scott Joplin
pieces played and recorded by me
*/

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer pr;
AudioPlayer peachr;
AudioPlayer hit;
AudioPlayer hmm;
int timer;

//border
PImage border;
PImage border2;
PImage notes;

//colour variables
color paleYellow = #FFFCEA;
color black = 0;

int stroke;


int mode;
final int INTRO    = 1; 
final int GAME     = 2;
final int PAUSE    = 3;
final int GAMEOVER = 4;
final int MOUSE   = 5;
final int INTRO2 = 6;
final int END = 7;

int ty;
//text size
int ts;

PFont font1;
PFont font2;
float ft;

//gif
PImage [] gif;
int numberOfFrames;
int g;
int f;

//font timer 
int fontTimer;

boolean leftkey, rightkey;
float px, py, pd;

float ballx, bally, balld; //ball
float vx, vy;

int lives;
int scoretimer;
int points;

int[] x; //array x coordinates
int[] y; //array y coordinates
boolean[] alive;
int n;  //elements in array
int brickd;  //brick diameter
int tempx, tempy;


void setup() {
  size(700, 600);
  mode = INTRO;
  
  
  //gif
  numberOfFrames = 8;
  gif = new PImage[numberOfFrames];
  
  int g = 0;
  while(g<numberOfFrames){
  gif[g] = loadImage("frame_"+g+"_delay-0.1s.gif");
  g = g +1;
  }

  
  //border
    border = loadImage("border.png");
    border2 = loadImage("border2.png");
    notes = loadImage("musicnotes.png");
  //font and font variables
  font1 = createFont("Gazelle.ttf", 200);
  ty = 700;
  font2 = createFont("font2.ttf", 60);
  ts = 100;
  fontTimer = 0;
  
  
  textAlign(CENTER);

  //brick array setup
  n = 52;
  x = new int [n];
  y = new int [n];
  alive = new boolean [n];
  brickd = 30;
  tempx = 50;
  tempy = 50;

  int i = 0;
  while (i<n) {
    x[i] = tempx;
    y[i] = tempy;
    alive [i] = true;
    tempx = tempx + 50;
    if ( tempx == width ) {
      tempx = 50;
      tempy = tempy + 50;
    }
    i = i + 1;
  }


  px = 350;
  py = 600;
  pd = 100;
  vx = (5);
  vy = (5);
  ballx = 350;
  bally = 300;
  balld = 10;
  lives = 3;
  scoretimer = 0;
  points = 0;
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
  } else if (mode == MOUSE) {
    mouse();
  } else if (mode == INTRO2){
  intro2();
  } else if (mode == END){
  end();
  }else {
    println("mode error: " + mode);
  }
}
 void tactile(int a, int b, int c, int d){
 if (mouseX > a && mouseX < b && mouseY > c && mouseY < d){
 stroke = paleYellow;
 
 }else stroke = black;
 }
 
 
 
