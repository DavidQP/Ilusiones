PImage circle;

int mask = 0;
int radius = 75;

void setup() {
  size(900, 900, P2D);

  PGraphics pg = createGraphics(radius*2, radius*2, P2D);
  pg.beginDraw();
  pg.background(180);
  pg.fill(#FFFF00);
  pg.stroke(#FFFF00);
  pg.strokeWeight(1);
  pg.ellipse(radius, radius, radius, radius);
  pg.filter(BLUR, 7);
  pg.endDraw();
  circle = pg.get();
  imageMode(CENTER);
}

void draw() {
  background(180);

  float a=0;
  for (int i = 0; i<12; i++, a+=PI/6) {
    if (i==mask)
      continue;
    image(circle, 450+cos(a)*300, 450+sin(a)*300);
  }
  mask=(mask+1)%12;
  stroke(0);
  strokeWeight(5);
  line(440, 450, 460, 450);
  line(450, 440, 450, 460);
  delay(125);
}