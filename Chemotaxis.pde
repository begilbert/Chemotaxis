final static ArrayList<Particlething> colony = new ArrayList();
void setup() {
  size(1000, 1000);
}

Particlething foo;
void draw() {
  background(0);
  if (mousePressed) {
    colony.add(new Particlething((float)(Math.random()*1000), (float)(Math.random() / 5)));
  }
  for (Particlething x: colony) {
    x.move(); 
    x.display();
  }
}
class Particlething {
  float theta, posX, posY, radX, radY, var;
  Particlething(float deg, float meme) {
    theta = deg;
    posX = deg;
    posY = deg;
    var = meme;
  }
  void move() {
    posX += 0.1;
    posY += 0.1;
    theta += var;
  }
  void display() {
    radX = posX * cos(theta);
    radY = posY * sin(theta);
    fill((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
    ellipse(radX + mouseX, radY + mouseY, 12, 12);
  }
}
