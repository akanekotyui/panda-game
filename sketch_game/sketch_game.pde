//変数を定義する
PImage img;

void setup(){
  //背景色を白(255)に設定する
  background(255);
  size(960, 720);
  img = loadImage("panda_lay.png");
  noLoop();
}

void draw(){
  //ランダムに表示させる
  for (int i = 0; i < 10; i++) {
    pushMatrix();
    transformPanda(random(width), random(100, 200));
    popMatrix();
  }
}

void transformPanda(float x, float y) {
  translate(x, y);
  scale(random(0.08, 0.2));
  rotate(random(-PI/6, PI/6));
  image(img, 0, 0);
}
