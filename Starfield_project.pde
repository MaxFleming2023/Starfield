ArrayList <Particle> boom;
int particleNum = 500;
PImage img;
void setup() {
  boom = new ArrayList<Particle>();
  for (int i = 0; i < particleNum; i++) {
    boom.add(new Particle());
  }
  size(1440, 800);
  boom.add(new OddBallParticle());
}

void draw() {
  background(0);
   boom.add(new Particle()); 
   boom.add(new Particle()); 
   boom.add(new Particle());
  for (int i = boom.size()-1; i>=0; i--) {
    boom.get(i).move();
    boom.get(i).show();
    if(boom.get(i).myY < 0){      
      boom.remove(i);
    }
  }
}
