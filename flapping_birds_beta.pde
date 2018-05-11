Bird[] flyers=new Bird[2];
Bucket[] buck=new Bucket[1];
PImage boom;
PImage some;
PImage back;
float x=0;
float y=0;
void setup()
{
  
  size(600,438);
  back=loadImage("field2.png");
  boom=loadImage("boom.png");
  buck[0]=new Bucket(random(200),400);
  flyers[0]=new Bird(random(200),random(200));
  flyers[1]=new Bird(random(200),random(200));
  
 
  
}
void draw()
{
  background(back);
  for(int i=0;i<flyers.length;i++)
  {
    flyers[i].display();
    flyers[i].move();
  }
  for (int i=0;i<buck.length;i++)
  {
    buck[i].display();
    buck[i].move();
  }
  //some=loadImage("bird1.PNG");
 // imageMode(CENTER);
  //image(some,width/2,height/2,100,100);
  
}
void mousePressed()
{
  image(boom,mouseX,mouseY,50,50);
  //for(int i=0;i<flyers.length;i++)
  //{
  //  if((flyers[i].x<mouseX&&mouseX<flyers[i].x+50)&&flyers[i].y<mouseY&&mouseY<flyers[i].y+50)
  //  flyers[i].dead();
  //}
  //pushMatrix();
  //translate(width/2,height/2);
   rotate(PI);
  //image(some,x-some.width/2,y-some.height/2,10,10);
 // popMatrix();
}
