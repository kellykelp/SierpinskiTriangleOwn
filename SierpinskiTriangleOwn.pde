public void setup()
{
	size(400, 400);
	background(0);
}
public void draw()
{
	sierpinski(50, 350, 300, 0);
	//sierpinskiUPDOWN(50, 200, 200);
	//sRect(50, 350, 300);
}
public void mouseDragged()//optional
{

}

public void mousePressed()
{
	background((int)(Math.random()*255));

}
public void sierpinski(int x, int y, int len, int col) 
{
	if (len <= 20)
	{
		stroke(col, col, col);
		noFill();
		triangle(x, y, x+len, y, x+len/2, y-len);

	}
	else
	{
		sierpinski(x, y, len/2, col+(int)(Math.random()*255));
		col = (int)(Math.random()*col);
		sierpinski(x+len/2, y, len/2, col+(int)(Math.random()*255));
		col = (int)(Math.random()*col/4);
		sierpinski(x+len/4, y-len/2, len/2, col+(int)(Math.random()*255));
		col = (int)(Math.random()*col/2);

	}
}

public void sRect(int x, int y, int len)
{
	if (len <= 20)
	{
		rect(x, y, len, len/2);
		stroke(5);
		fill(245);
	}
	else
	{
		sRect(x , y, len/3);
		sRect(x+len/3, y, len/3);
		sRect(x+len/6, y-len/3, len/3);
	}
}