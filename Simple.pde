// what should we tackle first? I got some ideas, but lets set our sights high.

// to know what happens if we dont focus, run this sketch.



float eyeHeight = 50;
float eyeWidth = 60;
float xoff = random(0.01);
float yoff = random(10000);
int headHeight = 200;
int headWidth = 175;
int face = 200;

void setup() {
  size(512, 512,OPENGL);
  background(255);




}

void draw() {

fill(0);
  textSize(25);
  text("click me?", 50, 100); 

//____head___//
pushMatrix();
  translate((width/2) + map(noise(yoff), 0, 1, -5, 5) , (height/2) + map(noise(xoff), 0, 1, -5, 5));
  fill(20, 165, face);
  ellipseMode(CENTER);
  ellipse(0, 0, headWidth, headHeight);
  fill(0);
  ellipse (0, 50, 75, 20);
popMatrix();

  //____eyes____//
  pushMatrix();
  stroke(0);
  fill(255, 123, 123);
  translate(-25 + width/2, -10 + height/2);
  ellipse(0, 0, eyeWidth, map(noise(yoff), 0, 1, 1, eyeHeight));
  fill(0);
  ellipse(0, 0, 10, 10);
  popMatrix();

  pushMatrix();
  translate(25 + width/2, -10 + height/2);
  stroke(0);
  fill(255, 123, 123);
  ellipse(map(noise(yoff), 0, 1, -.01, .01) + 20, 0, eyeWidth, map(noise(xoff), 0, 1, 1, eyeHeight));
  fill(0);
  ellipse(20, 0, 10, 10);
  popMatrix();

  xoff += 0.01;
  yoff += 0.01;

 
}


void mousePressed() {
  face = 0;
}

void mouseReleased() {
  face = 100;
}

void mouseDragged() {
  face = 200;
}




