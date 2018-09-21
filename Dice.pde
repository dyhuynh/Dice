void setup()
{
	noLoop();
	size(400,400);
}
void draw()
{
Die bob = new Die(300,100);
bob.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
int diceRoll;
int myX;
int myY;

	Die(int x, int y) //constructor
	{
		roll();
		int myX = x;
		int myY = y; 
	}
	void roll()
	{
		diceRoll = (int)(Math.random()*3+1);
	}
	void show()
	{
		//dice 1

	if (diceRoll == 1) {
		fill(255);
		rect(myX,myY,40,40);
		fill(0);
		ellipse(myX+20,myY+20,10,10);
	
	} else if (diceRoll == 2) {
		fill(255);
		rect(myX,myY,40,40);
		fill(0);
		ellipse(myX+20,myY+6,10,10);
		ellipse(myX+20,myY+34,10,10);
	} else if (diceRoll == 3) {
		fill(255);
		rect(myX,myY,40,40);
		fill(0);
		ellipse(myX+20,myY+6,10,10);
		ellipse(myX+6,myY+34,10,10);
		ellipse(myX+34,myY+34,10,10);


	}

	}
}
