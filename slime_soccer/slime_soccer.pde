float g = 0.44;
ball b;
slime s;
int score1;
int score2;
String time = "120";
int t;
int interval = 120;
PImage goal;

void setup() {
  size(877, 437);
  goal= loadImage("goal.png");
  b = new ball();
  s = new slime();
  score1=0;
  score2=0;
  textSize(32);
}

void draw() {
  background(255);
  t=interval-int(millis()/1000);
  time=nf(t,3);
  if(t==0){
  textSize(56);
  text("GAME OVER",height/2, width/4);
  text(score1,30,height/2);
  text(score2,847,height/2);
  }
  if(t==-1){
  delay(1000000);
  }
  
  textSize(20);
  text(time,800,30);
  textSize(20);
  text("Time:",740,30);
  text(":score:", width*0.5-50, height/10);
  text(score1, width*0.25, height/10);
  text(score2,width*0.75,height/10);

  s.render();
  b.render();

  s.update();
  b.update();
  
  image(goal, 0, 350);
}


void keyPressed() {
  if (key == 'w') {
    s.jump = true;
  }
  if (key == 'a') {
    s.moveLeft = true;
  }
  if (key == 'd') {
    s.moveRight = true;
  }
}

void keyReleased() {
  if (key == 'a') {
    s.moveLeft = false;
  }
  if (key == 'd') {
    s.moveRight = false;
  }
}
