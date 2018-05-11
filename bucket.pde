PImage buckimage;
class Bucket
{
  float x;
  float y;
  float xspeed=10;
  Bucket(float xloc, float yloc)
  {
    x=xloc;
    y=yloc;
    buckimage=loadImage("bucket.png");
   
  }
  void display()
  {
    
    image(buckimage,x,y,150,150);
  }
  void move()
  {
    x=x+xspeed;
    if(x>width||x<0)
    xspeed=-xspeed;
  }
}
