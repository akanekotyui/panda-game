//変数を定義する
PImage img;
int speed = 1;
int dir = -1;
int x1, y1 = 0;
int x2, y2 = 50;
int x3, y3 = 100;
int sp_w = 850;
int sp_h = 150;

void setup() {
  background(255);//背景色を白(255)に設定する
  size(960, 720);
  frameRate(60);
  smooth();
  img = loadImage("panda_lay.png");
}

void draw() {
  //背景を塗り直す
  background(255);

  x1 += dir * speed;
  //端までいったら折り返す
  if ( ( x1 < 0 ) || ( x1 > width - img.width )  ) {
    dir = dir * -1;
    //scale(-1,1);
    //x1 = width - img.width;
  }
  if(mousePressed){
    if(dist(x1+img.width/2,y1+img.height/2,mouseX,mouseY)<=100){
      //パンダの動きをとめる
      x1 = mouseX - img.width/2;
      y1 = mouseY - img.height/2;
      if ((height - sp_h/2) < (y1 + img.height)){
        noLoop();
      }
    }
  }
    image( img, x1, y1 );
  //シャンプー台の表示
  rectMode(CENTER);
  rect(width/2, height, sp_w, sp_h);
}
