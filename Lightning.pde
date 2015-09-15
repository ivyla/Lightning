int startX = 150;
int startY = 0;
int endX = 400;
int endY = -10;
int r = 0;
int g = 0;
int b = 0;

void setup()
{
  size(500, 500);
  strokeWeight(5);
  background(0, 0, 0);
}
void draw()
{
  r = (int)(Math.random()*256);
  g = (int)(Math.random()*256);
  b = (int)(Math.random()*256);

  //If you want it to draw immediately, change if to while
  if (endY < 600) 
  {
    endX = startX + (int)(Math.random()*18) - 9;
    endY = startY + (int)(Math.random()*15);
    if (endY < 600) 
    {
      endX = startX + (int)(Math.random()*18) - 9;
      endY = startY + (int)(Math.random()*30);

      //Create an ellipse that finds the location of the start X and draws a circle on top)

      noFill();
      stroke(r, g, b);
      line(startX, startY, endX, endY);
  //     line(startX+10, startY-10, endX, endY);
    //   line(startX+30, startY+30, endX+30, endY+30);
      startY = endY;
      startX = endX;
    }

    // noStroke();
    //  fill(255,246,81);
    // ellipse(startX, 0, 80,80);
    redraw();
  }
}
  void mousePressed() {
    startX = (int)(Math.random()*500);
    startY = 0;
    endX = 0;
    endY = 0;

    r = 0;
    g = 0;
    b = 0;
  }


  /*Mistake that I made:
   NEVER intialize a 
   ariable more than once ivy u silly gal
   //Draw a rectangle 
   */
