int color_from = 50, color_to=200;
float size = 0;
void setup() {
  size(1200, 800);
}

void mouseMoved() {
  size = (float)(mouseY-50)/700;
  size = size>1?1:(size<0?0:size);
}

void draw() {
  background(#FFFFFF);

  for (int i = 0; i<5; i++) {
    int c = (color_to-color_from)/5*i+color_from;
    fill(c);
    stroke(c);
    rect(50+i*100, 800-(1+i)*140-50, 1100-2*i*100, ((int)70+70*size));
  }
}