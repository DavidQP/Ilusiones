
PImage im_nr, im_r;
PGraphics pg;
void abajo_izquierda(int x, int y) {
  pg.rect(x*(width/15)+1, y*(height/15)+2*height/15/3, width/15/3-1, height/15/3-1);
}
void arriba_derecha(int x, int y) {
  pg.rect(x*(width/15)+2*width/15/3, y*(height/15)+1, width/15/3-1, height/15/3-1);
}

PImage image(Boolean rect) {
  pg = createGraphics(width/2, height/2, P2D);
  pg.beginDraw();

  pg.background(#FFFFFF);

  pg.stroke(0);
  pg.fill(0);
  for (int x = 0; x<15; x++) {
    for (int y = 0; y<15; y++) {
      if ((x+y)%2==0)
        pg.rect(x*(width/15), y*(height/15), width/15, height/15);
    }
  }
  if (rect) {
    for (int x = 1; x<7; x++) { // Linea central horizontal
      int y = 7;
      int c = (x+y)%2==0?255:0;
      pg.fill(c);
      pg.stroke(255-c);
      arriba_derecha(x, y);
    }

    for (int y = 1; y<7; y++) { // Linea central vertical
      int x = 7;
      int c = (x+y)%2==0?255:0;
      pg.fill(c);
      pg.stroke(255-c);
      abajo_izquierda(x, y);
    }
    for (int x = 6; x>0; x--) { // Triangulo arriba izquierdo
      for (int y = 6; y>0; y--) {
        int d = abs(6-x)+abs(6-y);
        if (d>5)
          continue;
        int c = (x+y)%2==0?255:0;
        pg.fill(c);
        pg.stroke(255-c);
        arriba_derecha(x, y);
        abajo_izquierda(x, y);
      }
    }
    {
      int x = 2, y = 4;
      for (int i = 0; i<=2; i++, x++, y--) {
        int c = (x+y)%2==0?255:0;
        pg.fill(c);
        pg.stroke(255-c);
        arriba_derecha(x, y);
        abajo_izquierda(x, y);
      }
    }
  }
  pg.endDraw();
  return pg.get();
}

void setup() {
  size(1200, 900, P2D);

  im_r=image(false);
  im_nr=image(true);
}

Boolean clic = false;

void mouseClicked(){
   clic=!clic;
}

void draw() {
  PImage im = clic?im_r:im_nr;
  
  image( im, 0, 0);

  pushMatrix();
  translate(width/2, 0);
  scale(-1, 1);
  image( im, -width/2, 0);
  popMatrix();

  pushMatrix();
  translate(0, height/2);
  scale(1, -1);
  image( im, 0, -height/2);
  popMatrix();

  pushMatrix();
  translate(width/2, height/2);
  scale(-1, -1);
  image( im, -width/2, -height/2);
  popMatrix();
}