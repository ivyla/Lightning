int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

void setup()
{
  size(300,300);
    strokeWeight(3);
  background(1,0,99);

}
void draw()
{

	stroke(5,255,255);
	while(endX < 400) 
	{
	endX = startX + (int)(Math.random()*10);
	endY = startY + (int)(Math.random()*18) - 9;

	line(startX, startY, endX, endY);
	startX = endX;
	startY = endY;
}



}

void mousePressed()
{
 startX = 0;
 startY = 150;
 endX = 0;
 endY = 150;

}

