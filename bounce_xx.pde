float circleX = 1;
float xspeed = 5;
float yspeed = 2;
float circleY = 1;
void setup() {
  size(640, 360);
}

void draw() {
  //draw
  background(50);
  fill(255);
  ellipse(circleX,circleY,24,24);
 
   //logic
  circleX = circleX + xspeed;
  circleY = circleY + yspeed;
  if ((circleX >= width)||(circleX <= 0))
  {
    xspeed = -xspeed;
  }
  if ((circleY >= height)||(circleY <= 0))
  {
    yspeed = -yspeed;
  }
}
