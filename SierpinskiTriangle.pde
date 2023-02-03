public void setup()
{
  size(600, 600);
  background(0);
}

public void sierpinski(int x, int y, int len)
{
  if(len <= 50)
  {
    noFill();
    stroke(55, 198, 255);
    triangle(x, y, x + len/2, y - len, x + len, y);
  }
  else
  {
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y - len/2, len/2);
  }
}

public void draw()
{
  sierpinski(10, 590, 550);
}

/*
public void mouseDragged()//optional
{

}
*/
