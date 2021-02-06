public int j = 255;
public int z = 255;
public int i = 70;
public int k = 180;
public int w = 125;
public void setup()
{
  size(1000,680);
  background(32, 28, 112);
}
public void draw()
{
  fill(z,j,j, 10);
  stroke(z,j,j);
  if(j>0){
    j--;
  }else if(j==0){
    z--;
  }
  sierpinski(i,k,w);
}
public void mouseDragged()//optional
{
  i = mouseX;
  k = mouseY;
  w = (mouseX + mouseY)/2;
}
public void mouseClicked()
{
  i = mouseX;
  k = mouseY;
  w = (mouseX + mouseY)/2;
  background(32,28,112);
}
public void keyPressed()
{
  j = 255;
  z = 255;
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
