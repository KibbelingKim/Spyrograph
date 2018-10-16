//Spyrograph

//x-axis
float xn1;
float yn1;
float fn1;

float xn2;
float yn2;
float fn2;

float xn3;
float yn3;
float fn3;

//y-axis
float xw1;
float yw1;
float fw1;

float xw2;
float yw2;
float fw2;

float xw3;
float yw3;
float fw3;

void setup() {
  size (1600, 900);
  // size(3360, 1080);
  // fullScreen();
  frameRate(60);
  noFill();
}

void draw() {
  background (0);

  strokeWeight(0.8);
  stroke (255, 200);
  ellipse(3*(width/16), height/9, width/16, height/9);
  ellipse(5*(width/16), height/9, width/16, height/9);
  ellipse(7*(width/16), height/9, width/16, height/9);
  ellipse(width/16, 2.5*(height/9), width/16, height/9);
  ellipse(width/16, 4*(height/9), width/16, height/9);
  ellipse(width/16, 5.5*(height/9), width/16, height/9);

  ellipse(3*(width/16), 7*(height/9), width/16, height/9);
  ellipse(5*(width/16), 7*height/9, width/16, height/9);
  ellipse(7*(width/16), 7*height/9, width/16, height/9);
  ellipse(8.5*(width/16), 2.5*(height/9), width/16, height/9);
  ellipse(8.5*(width/16), 4*(height/9), width/16, height/9);
  ellipse(8.5*(width/16), 5.5*(height/9), width/16, height/9);

  //line(2.5*(width/16), height/9, 3.5*(width/16), height/9);
  //line(4.5*(width/16), height/9, 5.5*(width/16), height/9);
  //line(6.5*(width/16), height/9, 7.5*(width/16), height/9);
  //line(2.5*(width/16), 7*(height/9), 3.5*(width/16), 7*(height/9));
  //line(4.5*(width/16), 7*(height/9), 5.5*(width/16), 7*(height/9));
  //line(6.5*(width/16), 7*(height/9), 7.5*(width/16), 7*(height/9));

  //line(width/16, 2*(height/9), width/16, 3*(height/9));
  //line(width/16, 3.5*(height/9), width/16, 4.5*(height/9));
  //line(width/16, 5*(height/9), width/16, 6*(height/9));
  //line(8.5*(width/16), 2*(height/9), 8.5*(width/16), 3*(height/9));
  //line(8.5*(width/16), 3.5*(height/9), 8.5*(width/16), 4.5*(height/9));
  //line(8.5*(width/16), 5*(height/9), 8.5*(width/16), 6*(height/9));

  fn1 = ((PI/60)*1.5);
  fn2 = ((PI/60)/1.25);
  fn3 = ((PI/60));
  fw1 = ((PI/60)*1.2);
  fw2 = ((PI/60)*1.4);
  fw3 = ((PI/60)*1.1);

  xn1 = 3*(width/16) + (width/32)*sin(frameCount * (fn1));
  yn1 = height/9 + (height/18)*cos(frameCount* (fn1));
  xn2 = 5*(width/16) + (width/32)*sin(frameCount * (fn2));
  yn2 = height/9 + (height/18)*cos(frameCount* (fn2));
  xn3 = 7*(width/16) + (width/32)*sin(frameCount * (fn3));
  yn3 = height/9 + (height/18)*cos(frameCount* (fn3));

  xw1 = width/16 + (width/32)*sin(frameCount * (fw1));
  yw1 = 2.5*(height/9) + (height/18)*cos(frameCount* (fw1));
  xw2 = width/16 + (width/32)*sin(frameCount * (fw2));
  yw2 = 4*(height/9) + (height/18)*cos(frameCount* (fw2));
  xw3 = width/16 + (width/32)*sin(frameCount * (fw3));
  yw3 = 5.5*(height/9) + (height/18)*cos(frameCount* (fw3));

  strokeWeight(1.4);
  stroke(0, 255, 255, 255);
  //for (int i = 0; i < 2400; i++) {
  //  point (3*(width/16) + (width/32)*sin(((float)frameCount-(float)i/2) * (fn1)), 2.5*(height/9) + (height/18)*cos(((float)frameCount-(float)i/2)* (fw1)));
  //  point (5*(width/16) + (width/32)*sin(((float)frameCount-(float)i/2) * (fn2)), 2.5*(height/9) + (height/18)*cos(((float)frameCount-(float)i/2)* (fw1)));
  //  point (7*(width/16) + (width/32)*sin(((float)frameCount-(float)i/2) * (fn3)), 2.5*(height/9) + (height/18)*cos(((float)frameCount-(float)i/2)* (fw1)));

  //  point (3*(width/16) + (width/32)*sin(((float)frameCount-(float)i/2) * (fn1)), 4*(height/9) + (height/18)*cos(((float)frameCount-(float)i/2)* (fw2)));
  //  point (5*(width/16) + (width/32)*sin(((float)frameCount-(float)i/2) * (fn2)), 4*(height/9) + (height/18)*cos(((float)frameCount-(float)i/2)* (fw2)));
  //  point (7*(width/16) + (width/32)*sin(((float)frameCount-(float)i/2) * (fn3)), 4*(height/9) + (height/18)*cos(((float)frameCount-(float)i/2)* (fw2)));

  //  point (3*(width/16) + (width/32)*sin(((float)frameCount-(float)i/2) * (fn1)), 5.5*(height/9) + (height/18)*cos(((float)frameCount-(float)i/2)* (fw3)));
  //  point (5*(width/16) + (width/32)*sin(((float)frameCount-(float)i/2) * (fn2)), 5.5*(height/9) + (height/18)*cos(((float)frameCount-(float)i/2)* (fw3)));
  //  point (7*(width/16) + (width/32)*sin(((float)frameCount-(float)i/2) * (fn3)), 5.5*(height/9) + (height/18)*cos(((float)frameCount-(float)i/2)* (fw3)));
  //}

  for (int i = 0; i < 1200; i+=17) {
    point (3*(width/16) + (width/32)*sin((frameCount-i) * (fn1)), 2.5*(height/9) + (height/18)*cos((frameCount-i)* (fw1)));
    point (5*(width/16) + (width/32)*sin((frameCount-i) * (fn2)), 2.5*(height/9) + (height/18)*cos((frameCount-i)* (fw1)));
    point (7*(width/16) + (width/32)*sin((frameCount-i) * (fn3)), 2.5*(height/9) + (height/18)*cos((frameCount-i)* (fw1)));

    point (3*(width/16) + (width/32)*sin((frameCount-i) * (fn1)), 4*(height/9) + (height/18)*cos((frameCount-i)* (fw2)));
    point (5*(width/16) + (width/32)*sin((frameCount-i) * (fn2)), 4*(height/9) + (height/18)*cos((frameCount-i)* (fw2)));
    point (7*(width/16) + (width/32)*sin((frameCount-i) * (fn3)), 4*(height/9) + (height/18)*cos((frameCount-i)* (fw2)));

    point (3*(width/16) + (width/32)*sin((frameCount-i) * (fn1)), 5.5*(height/9) + (height/18)*cos((frameCount-i)* (fw3)));
    point (5*(width/16) + (width/32)*sin((frameCount-i) * (fn2)), 5.5*(height/9) + (height/18)*cos((frameCount-i)* (fw3)));
    point (7*(width/16) + (width/32)*sin((frameCount-i) * (fn3)), 5.5*(height/9) + (height/18)*cos((frameCount-i)* (fw3)));
  }

  strokeWeight(7);
  stroke(191, 127, 255, 6);
  for (int i = 0; i < 50; i++) {
    point (3*(width/16) + (width/32)*sin((float)(frameCount-(float)i/8) * (fn1)), 2.5*(height/9) + (height/18)*cos((float)(frameCount-(float)i/8)* (fw1)));
    point (5*(width/16) + (width/32)*sin((float)(frameCount-(float)i/8) * (fn2)), 2.5*(height/9) + (height/18)*cos((float)(frameCount-(float)i/8)* (fw1)));
    point (7*(width/16) + (width/32)*sin((float)(frameCount-(float)i/8) * (fn3)), 2.5*(height/9) + (height/18)*cos((float)(frameCount-(float)i/8)* (fw1)));

    point (3*(width/16) + (width/32)*sin((float)(frameCount-(float)i/8) * (fn1)), 4*(height/9) + (height/18)*cos((float)(frameCount-(float)i/8)* (fw2)));
    point (5*(width/16) + (width/32)*sin((float)(frameCount-(float)i/8) * (fn2)), 4*(height/9) + (height/18)*cos((float)(frameCount-(float)i/8)* (fw2)));
    point (7*(width/16) + (width/32)*sin((float)(frameCount-(float)i/8) * (fn3)), 4*(height/9) + (height/18)*cos((float)(frameCount-(float)i/8)* (fw2)));

    point (3*(width/16) + (width/32)*sin((float)(frameCount-(float)i/8) * (fn1)), 5.5*(height/9) + (height/18)*cos((float)(frameCount-(float)i/8)* (fw3)));
    point (5*(width/16) + (width/32)*sin((float)(frameCount-(float)i/8) * (fn2)), 5.5*(height/9) + (height/18)*cos((float)(frameCount-(float)i/8)* (fw3)));
    point (7*(width/16) + (width/32)*sin((float)(frameCount-(float)i/8) * (fn3)), 5.5*(height/9) + (height/18)*cos((float)(frameCount-(float)i/8)* (fw3)));
  }

  strokeWeight(5);
  stroke(255, 0, 0, 200);
  point(xn1, yn1);
  point(xn2, yn2);
  point(xn3, yn3);
  point(xw1, yw1);
  point(xw2, yw2);
  point(xw3, yw3);

  point(xn1, yn1 + 6*(height/9));
  point(xn2, yn2 + 6*(height/9));
  point(xn3, yn3 + 6*(height/9));
  point(xw1 + 7.5*(width/16), yw1);
  point(xw2 + 7.5*(width/16), yw2);
  point(xw3 + 7.5*(width/16), yw3);

  //point(xn1, (height/9));
  //point(xn2, (height/9));
  //point(xn3, (height/9));
  //point(xn1, 7*(height/9));
  //point(xn2, 7*(height/9));
  //point(xn3, 7*(height/9));

  //point((width/16), yw1);
  //point((width/16), yw2);
  //point((width/16), yw3);
  //point(8.5*(width/16), yw1);
  //point(8.5*(width/16), yw2);
  //point(8.5*(width/16), yw3);

  stroke (255, 0, 0, 100);
  strokeWeight(1);
  //line(xn1, (height/9), xn1, 7*(height/9));
  //line(xn2, (height/9), xn2, 7*(height/9));
  //line(xn3, (height/9), xn3, 7*(height/9));
  //line((width/16), yw1, 8.5*(width/16), yw1);
  //line((width/16), yw2, 8.5*(width/16), yw2);
  //line((width/16), yw3, 8.5*(width/16), yw3);

  //line(xn1, yw1, xn1, yw3);
  //line(xn1, yw1, xn3, yw1);
  //line(xn2, yw1, xn2, yw3);
  //line(xn3, yw1, xn3, yw3);
  //line(xn1, yw2, xn3, yw2);
  //line(xn1, yw3, xn3, yw3);

  line(xn1, yn1, xn1, yn1 + 6*(height/9));
  line(xn2, yn2, xn2, yn2 + 6*(height/9));
  line(xn3, yn3, xn3, yn3 + 6*(height/9));
  line(xw1, yw1, xw1 + 7.5*(width/16), yw1);
  line(xw2, yw2, xw2 + 7.5*(width/16), yw2);
  line (xw3, yw3, xw3 + 7.5*(width/16), yw3);

  strokeWeight(3);
  stroke(255, 0, 0, 255);
  point (xn1, yw1);
  point (xn2, yw1);
  point (xn3, yw1);
  point (xn1, yw2);
  point (xn2, yw2);
  point (xn3, yw2);
  point (xn1, yw3);
  point (xn2, yw3);
  point (xn3, yw3);

  if (frameCount % 60 == 0) {
    println (frameRate);
  }
}

void mouseClicked() {
  println("Saving frame!");
  saveFrame();
}
