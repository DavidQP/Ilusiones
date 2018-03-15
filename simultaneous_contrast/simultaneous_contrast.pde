size(1200, 900);

for (int i = 0; i<1200; i++) {
  stroke((int)((float)i/1200.*194.)+32);
  line(i, 0, i, 900);
}
fill(128);
stroke(128);
rect(200,350,800,200);