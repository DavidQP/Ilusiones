void setup() {
  size(1200, 900);
}

int OFFSET = 25;

void mouseMoved(){
  OFFSET = (int)(mouseX/1200.*25.);
}

void draw() {

  background(#FFFFFF);

  int n_lines = 10;

  strokeWeight(5);
  stroke(100);

  for (int i = 0; i<n_lines; i++)
    line(0, 100*i, 1200, 100*i);

  fill(0);



  int n_rect = 7;

  for (int a = 0; a<3; a++) {
    int offset = OFFSET;
    for (int j = 0; j<4; j++) {
      for (int i = 0; i<n_rect; i++)
        rect(offset+100*2*i, ((a*4)+j)*100, 100, 100);
      if (j==2)
        offset-=OFFSET;
      else
        offset+=OFFSET;
    }
  }
}