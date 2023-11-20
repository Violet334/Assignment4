ArrayList<Particle> particles;

void setup(){
 size(400,400);
 particles = new ArrayList<Particle>();
}

void draw(){
  background(0);
  for (int i = particles.size()-1 ; i >=0 ; i--){//loop backward
    particles.get(i).update();
    particles.get(i).display();
    if (particles.get(i).position.y > 400) {//the particles out of the bootom of the canvasd
      particles.remove(i);
    }
  }
  if(mousePressed == true) {
    particles.add(new Particle(mouseX, mouseY));
  }
}
