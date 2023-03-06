class Particle {
  int posx, posy;
  float myX, myY, pSize, mathing;
  double myAngle, mySpeed;
  Particle() {
    myX = width/2;
    myY = height/2;
    pSize = (float)(Math.random()*5+5);
    mathing = (float)(Math.random()*255);
    myAngle = (Math.random()*2*Math.PI);
    mySpeed = (Math.random()*20);
  }
  void move() {
    myX += mySpeed*Math.cos(myAngle);
    myY += mySpeed*Math.sin(myAngle);
  }
  void show() {
    ellipse(myX, myY, pSize, pSize);
    noStroke();
  }
}
class OddBallParticle extends Particle {

  OddBallParticle() {
    posy = height/2;
    posx = width/2;
    myX = width/2;
    myY = height/2;
    pSize = 40;
    myAngle = (Math.random()*2*Math.PI);
    mySpeed = (Math.random()*10);
  }
  void move() {
    myX = myX + (int)(Math.random()*10)-4;
    myY = myY + (int)(Math.random()*10)-4;
  }
  void show() {
    ellipse(posx, posy, pSize, pSize);
    if (keyPressed == true) {

      if (keyCode== RIGHT)
        posx+=10;
      if (keyCode== LEFT)
        posx-=10;
      if (keyCode== UP)
        posy-=10;
      if (keyCode== DOWN)
        posy+=10;
      if (posx<0) posx=0;
      if (posx>width) posx=width;
      if (posy<0) posy=0;
      if (posy>width) posy=width;
      
    }
  }
}
