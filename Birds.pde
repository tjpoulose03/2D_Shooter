PImage birds=new PImage();

class Bird
{
  float x;
  float y;
  float xspeed=random(5,8);
  float yspeed=random(8,10);
  Bird(float locx,float locy)
  {
    x=locx;
    y=locy;
  }
  void display()
  {
  birds=loadImage("birdflying.png");
  imageMode(CENTER);
  image(birds,x,y,50,50);
    
  }
  void move()
  {
    x=x+xspeed;
    y=y+yspeed;
    if(x>width||x<0)
    {
     xspeed=-xspeed;
     pushMatrix();
     scale(-1.0,1.0);
     image(birds,-x,y,50,50);
     popMatrix();
    }
    if(y<0||y>301)
    { 
     yspeed=-yspeed;
    
    }
   
 }
 void dead()
 {
   pushMatrix();
   rotate(PI);
  imageMode(CENTER);
  image(birds,x,y,50,50);
  popMatrix();
   

 }

}
