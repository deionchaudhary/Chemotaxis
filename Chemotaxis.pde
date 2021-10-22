Bacteria [] one = new Bacteria[100];

void setup()
{
  size(1000,500);
  frameRate(1000);
  int i = 0;
while(i < one.length){
  one[i] = new Bacteria();
  i++;
}
}
void draw()
{
  background(0);
  for (int i = 0; i < one.length; i++) {
    one[i].move();
    one[i].show();
    one[i].follow();
}
}
   
class Bacteria
{
  int myX,myY,myColor,mySize;
  Bacteria()
  {
    myX = (int)(Math.random()*1000);
    myY = (int)(Math.random()*500);
    myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    mySize = 50;
  }
  void move()
  {
    myX = myX +(int)(Math.random()*3)-1; //change multiplier to drift
    myY = myY +(int)(Math.random()*3)-1;
  }
      void show()
      {
        fill(myColor);
        ellipse(myX,myY,mySize,mySize);
      }
    void follow () {
      if (mouseX-myX <= 100 && dist(myX,myY,mouseX,mouseY) <= mySize/2 + 50) {
      myX = mouseX;
      }
      if (mouseX+myX <= 0 && dist(myX,myY,mouseX,mouseY) <= mySize/2 - 50) {
      myX = mouseX;
      }
      if (mouseY-myY <= 100 && dist(myX,myY,mouseX,mouseY) <= mySize/2 + 50) {
        myY = mouseY;
    }
    if (mouseY+myX <= 0 && dist(myX,myY,mouseX,mouseY) <= mySize/2 - 50) {
      myY = mouseY;
      }
}

}

void mousePressed () {
  textSize(100);
  fill(255,255,0);
  text("YOU WIN!", 250, 250);
}
