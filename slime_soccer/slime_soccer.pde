float g = 0.44;
ball b;
slime s;
score1
score2
PImage goal;

void setup() {
  goal = loadImage("goal.png");
  size(877, 437);
  b = new ball();
  s = new slime();
  score1=0;
  score2=0;
  textSize(32);
}

void draw() {
  background(255);
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
