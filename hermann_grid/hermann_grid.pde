
void setup() {
  size(800, 800);
}

Boolean circles = true;
void mouseClicked() {
  circles=!circles;
}

void draw() {

  background(color(0, 0, 0));
  strokeWeight(15);
  
  stroke(circles?100:250);
  int n_lines=7;
  for (int i = 0; i<n_lines; i++)
    line(0, 100*(i+1), 800, 100*(i+1));

  for (int i = 0; i<n_lines; i++) 
    line(100*(i+1), 0, 100*(i+1), 800);


  stroke(255);
  fill(255);
  strokeWeight(1);

  int radius = 20;
  if (circles)
    for (int i = 0; i<n_lines; i++)
      for (int j = 0; j<n_lines; j++)
        ellipse(100*(i+1), 100*(j+1), radius, radius);
}