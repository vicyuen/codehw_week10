// code 1 FA 18
// bryan ma

// generative portrait 2

// see description in w10_04_portrait1

PImage img;
int cols = 100;
int rows = 100;
color[][]doggo = new color[cols][rows];

void setup() {
  size(785, 785);
  img = loadImage("doggo.jpg");
  background(255);
  noStroke();
  ellipseMode(CORNER);
}

void draw() {
  background(255);
  //for (int i = 0; i < img.width; i+=20) {
  //  for (int j = 0; j < img.height; j+=20) {
  //    color c = img.get(i,j);
  //    fill(c);
  //    ellipse(i, j, 20, 20);
  //  }
  //}

  for (int i = 0; i < cols; i ++) {
    for (int j = 0; j < rows; j++) {

      doggo[i][j] = img.get(i*width/cols, j*height/rows);
      fill(doggo[i][j]);
      ellipse(i*width/cols, j*height/rows, width/cols, height/rows);
    }
  }
}
