float circleX = 1;
float xspeed = 5;
float yspeed = 2;
float circleY = 1;
PImage logo;
float r;
float g;
float b;

void setup() {
  size(640, 360);
  logo = loadImage("logo.png");
}

void draw() {
  //draw
  background(50);
  fill(255);
  //ellipse(circleX,circleY,24,24);
  
  //logic
  circleX = circleX + xspeed;
  circleY = circleY + yspeed;
  if ((circleX >= width)||(circleX <= 0))
  {
    recolor();
    xspeed = -xspeed;
  }
  if ((circleY >= height)||(circleY <= 0))
  {
    yspeed = -yspeed;
    recolor();
  }
  tint(r,g,b);
  image(logo, circleX - 24, circleY - 24, 120, 75);
}

void recolor()
{
 r= random(0, 255);
 g = random(0, 255);
 b = random(0, 255);
}
