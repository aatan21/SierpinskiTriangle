double limit = 550;
public void setup()
{
  size(600, 600);
  background(0);
}

public void sierpinski(int x, int y, int len)
{
  if(len <= limit)
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
  sierpinski(25, 590, 550);
}

public void keyPressed()
{
  if((key == 'e' || key == 'E') && limit > 5)
  {
    clear();
    limit = limit / 2;
  }
  if((key == 'q' || key == 'Q') && limit < 550)
  {
    clear();
    limit = limit * 2;
  }
}
