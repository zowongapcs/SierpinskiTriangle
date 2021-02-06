public int greenBlue = 255;
public int red = 255;
public int X = 70;
public int Y = 180;
public int Len = 125;
public void setup()
{
  size(1000,680);
  background(32, 28, 112);
}
public void draw()
{
  fill(red,greenBlue,greenBlue, 10);
  stroke(red,greenBlue,greenBlue);
  if(greenBlue>0){
    greenBlue--;
  }else if(greenBlue==0){
    red--;
  }
  sierpinski(X,Y,Len);
}
public void mouseDragged()//optional
{
  X = mouseX;
  Y = mouseY;
  Len = (mouseX + mouseY)/2;
}
public void mouseClicked()
{
  X = mouseX;
  Y = mouseY;
  Len = (mouseX + mouseY)/2;
  background(32,28,112);
}
public void keyPressed()
{
  greenBlue = 255;
  red = 255;
}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 20){
    triangle(x, y, x+len/2, y-len, x+len, y);
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
