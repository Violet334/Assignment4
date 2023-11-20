ArrayList<Particle> particles;

void setup(){
 size(400,400);
 particles = new ArrayList<Particle>();
}

void draw(){
  background(0);
  for (int j = particles.size()-1 ; j >=0 ; j--){//loop backward
    particles.get(j).update();
    particles.get(j).display();
    if (particles.get(j).position.y > 400) {//the particles out of the bootom of the canvasd
      particles.remove(j);
    }
  }
  if(mousePressed == true) {
    particles.add(new Particle(mouseX, mouseY));
  }
}
