int startX = 150;
int startY = -10;
int endX = 150;
int endY = 400;
int r = 0;
int g = 0;
int b = 0;

void setup()
{
  size(500,500);
    strokeWeight(3);
  background(0,0,0);


}
void draw()
{
	r = (int)(Math.random()*256);
	g = (int)(Math.random()*256);
	b = (int)(Math.random()*256);


	while(endX < 600) 
	{
	endX = startX + (int)(Math.random()*15);
	endY = startY + (int)(Math.random()*18) - 9;

//Create an ellipse that finds the location of the start X and draws a circle on top)

	noFill();
	stroke(r,g,b);
	line(startX, startY, endX, endY);
	startX = endX;
	startY = endY;

}

		noStroke();
	fill(255,246,81);
	ellipse(startX, 300, 30,30);


}

void mousePressed(
){
 startX = 0;
 startY = (int)(Math.random()*401);
 endX = 0;
 endY = 150;

 r = 0;
 g = 0;
 b = 0;

}


/*Mistake that I made:
 NEVER intialize a 
 ariable more than once ivy u silly gal

*/ 

