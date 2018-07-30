//変数を定義する
PImage img;
int speed = 3;
int dir = 1;
int x = 0;
int y = 0;

void setup(){
  background(255);//背景色を白(255)に設定する
  size(960, 720);
  frameRate(60);
  smooth();
  img = loadImage("panda_lay.png");
  //ランダムに表示させる
  //for (int i = 0; i < 10; i++) {
  //  pushMatrix();
  //  transformPanda(random(width), random(100, 200));
  //  popMatrix();
  //}
}

void draw(){
  //背景を塗り直す
  background(255);
  
  x = x + speed;
  if ( ( x < img.width ) || ( x > width - img.width )  ) {
    dir = - dir;
  }
  noStroke();
  image( img, x, y );

}

//void transformPanda(float x, float y) {
//  translate(x, y);
//  scale(random(0.5, 1.2));
//  rotate(random(-PI/6, PI/6));
//  image(img, 0, 0);
//}

//void mouseMoved(){
//  fill(#000000);
//  ellipse(mouseX, mouseY, 2*r, 2*r);
//}
