void setup()
{
	noLoop();
	size(400,400);
}
void draw()
{
	background(255);
	int diceNum = 0;
	for(int diceY = 0; diceY<300; diceY+=40){
	for(int diceX = 0; diceX<400; diceX+=40) {
Die bob = new Die(diceX,diceY);
bob.show();
	diceNum++;

		}
	}
	text("You have "+diceNum+" dice",100,350);
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
		myX = x;
		myY = y; 

	}
	void roll()
	{
		diceRoll = (int)(Math.random()*6+1);
	}
	void show()
	{
		fill(255);
		rect(myX,myY,40,40);
		fill(0);

		//dice 1


	if (diceRoll == 1) {
	
		ellipse(myX+20,myY+20,10,10);
	
	} else if (diceRoll == 2) {
		ellipse(myX+10,myY+20,10,10);
		ellipse(myX+30,myY+20,10,10);
	} else if (diceRoll == 3) {
		ellipse(myX+20,myY+10,10,10);
		ellipse(myX+10,myY+30,10,10);
		ellipse(myX+30,myY+30,10,10);
	} else if (diceRoll == 4) {
		ellipse(myX+10,myY+10,10,10);
		ellipse(myX+30,myY+10,10,10);
		ellipse(myX+10,myY+30,10,10);
		ellipse(myX+30,myY+30,10,10);
	} else if (diceRoll == 5) {
		ellipse(myX+10,myY+10,10,10);
		ellipse(myX+30,myY+10,10,10);
		ellipse(myX+10,myY+30,10,10);
		ellipse(myX+20,myY+20,10,10);
		ellipse(myX+30,myY+30,10,10);
	} else if (diceRoll == 6) {
		ellipse(myX+10,myY+6,8,8);
		ellipse(myX+30,myY+6,8,8);
		ellipse(myX+10,myY+34,8,8);
		ellipse(myX+30,myY+34,8,8);
		ellipse(myX+10, myY+20,8,8);
		ellipse(myX+30, myY+20,8,8);
	}
	}
}
