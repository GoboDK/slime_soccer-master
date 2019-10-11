class ball {
  PVector x, v;
  float r;

  ball() {
    x = new PVector(width/2,height/2);
    v = new PVector(0,0);
    r = 15;
  }

  void render() {
    noStroke();
    fill(255, 0, 0);
    ellipse(x.x, x.y, 2*r, 2*r);
  }

  void update() {
    if (dist(x.x, x.y, s.x.x, s.x.y) < r + s.r) {
      bounce(s);
    } else {
      v.mult(0.99);
      v.y += g;
    }
    
    if (x.y == 0) {
      v.mult(0.7);
    }
    
    v.limit(20);
    x.add(v);

    if (x.y + r > height) {
      x.y = height - r;
      v.y = -v.y;
    }
    if (x.x <= 0 ) {
      v.x= -v.x;
    }
    if (x.x >= width-r) {
      v.x= -v.x;
    }
       if(x.x < 50 && x.y > 349 ) {
    score2 ++;
    x.x =width/2;
    x.y =height/2;
    v.x = 0;
    v.y = 0;
    }
     if(x.x > 827 && x.y > 349 ) {
    score2 ++;
    x.x =width/2;
    x.y =height/2;
    v.x = 0;
    v.y = 0;
    }
  }

  void bounce(slime s) {
    PVector n = PVector.sub(x, s.x);
    float distanceCor = r + s.r - n.mag();
    n.normalize();
    v.sub(PVector.mult(n, 2*PVector.dot(n, v)));
    x.add(n.setMag(distanceCor));
    x.add(s.v);
    v.mult(1.5);
  }
}
