import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Lightning extends PApplet {

int startX = 150;
int startY = 0;
int endX = 400;
int endY = -10;
int r = 0;
int g = 0;
int b = 0;

public void setup()
{
  size(500,500);
    strokeWeight(3);
  background(0,0,0);


}
public void draw()
{
	r = (int)(Math.random()*256);
	g = (int)(Math.random()*256);
	b = (int)(Math.random()*256);

//If you want it to draw immediately, change if to while
	while(endY < 600) 
	{
	endX = startX + (int)(Math.random()*18) - 9;
	endY = startY + (int)(Math.random()*15);

//Create an ellipse that finds the location of the start X and draws a circle on top)

	noFill();
	//stroke(r,g,b);
	stroke(255,255,0);
	line(startX, startY, endX, endY);
	line(startX+1, startY, endX, endY);
	startY = endY;
	startX = endX;



}

		noStroke();
	fill(255,246,81);
	ellipse(startX, 0, 80,80);


}

public void mousePressed(
){
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

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Lightning" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
