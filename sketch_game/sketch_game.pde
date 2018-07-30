//変数を定義する
PImage img;
int speed = 2;
int dir = 1;
int r;

void setup(){
  //背景色を白(255)に設定する
  background(255);
  size(960, 720);
  frameRate(30);
  img = loadImage("panda_lay.png");
  //ランダムに表示させる
  for (int i = 0; i < 10; i++) {
    pushMatrix();
    transformPanda(random(width), random(100, 200));
    popMatrix();
  }
  r = 3;
}

void draw(){
  
  
}

void transformPanda(float x, float y) {
  translate(x, y);
  scale(random(0.5, 1.2));
  rotate(random(-PI/6, PI/6));
  image(img, 0, 0);
}

//void mouseMoved(){
//  fill(#000000);
//  ellipse(mouseX, mouseY, 2*r, 2*r);
//}
