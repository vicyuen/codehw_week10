// code 1 FA 18
// bryan ma

// Saves one PDF of the contents of the display window each time the mouse is pressed.

// this code is taken from the processing examples in libraries/pdf export. 

// adapt this code to your portrait, and print out the resulting PDF.

import processing.pdf.*;
PImage img;
Brushstroke b;

boolean saveOneFrame = false;

void setup() {

  frameRate(24);
  size(1200, 800);
  img = loadImage("priscilla.jpg");
  background(255);
  noStroke();
  beginRecord(PDF, "priscilla.pdf");
}

void draw() {
  //if (saveOneFrame == true) {
  //}

  if (mousePressed) {
    if (frameCount % 5 == 0) {
      b = new Brushstroke(mouseX, mouseY);
    }

    if (b != null) {
      b.update();
      b.display();
    }
  }

  if (saveOneFrame == true) {
    endRecord();
    saveOneFrame = false;
    exit();
  }
}

void keyPressed() {
  saveOneFrame = true;
  //if (key== 'd') {
  //  endRecord();
  //  exit();
  //}
  //if (key== 'f') {
  //  beginRecord(PDF, "Line.pdf");
  //}
}

class Brushstroke {
  float x, y;
  float vx, vy;
  float siz;
  float lifetime = 10;

  Brushstroke(float x, float y) {
    this.x = x;
    this.y = y;
    vx = random(-8, 8);
    vy = random(-8, 8);
    siz = random(5, 20);
  }

  void update() {
    x += vx;
    y += vy;
  }

  void display() {
    //fill(c, s, b);
    color c = img.get(int(x), int(y));
    fill(c);
    noStroke();
    ellipse(x, y, siz, siz);
  }
}
