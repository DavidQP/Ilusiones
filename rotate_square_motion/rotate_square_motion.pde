void setup(){
  size(900, 900);
}
int i = 0;
void draw() {
  noStroke();
  background(0);
  pushMatrix();
  translate(width/2, height/2);
  rotate(PI/400 * i);
  fill(#2C82C9);
  rect(-200, -200, 400, 400);
  i++;
    i%=800;
  delay(20);
  popMatrix();
  fill(#FAC51C);
  rect(0, 0, 425, 425);
  rect(475, 475, 425, 425);
  rect(475, 0, 425, 425);
  rect(0, 475, 425, 425);
}