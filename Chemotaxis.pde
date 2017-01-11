Bacteria [] colony;
void setup()   
 {     
   size(750,750);
   background(0);
   colony = new Bacteria [12];
   for (int i = 0; i < colony.length; i++)
   {
    colony [i] = new Bacteria();
   } 
 }   
 void draw()   
 {     
   background(0);
   for (int i = 0; i < colony.length; i++)   
   {
   colony[i].move();
   colony[i].show();
   } 
 }  
 class Bacteria    
 {     
   int myX, myY;
   Bacteria()
  {
   myX = 0;
   myY = ((int)(Math.random()*3)-1);
  }
void show()
  {
   fill(random(255),random(255),random(255));
   ellipse(myX,myY,20,20);
  } 
 void move()
 {
   if(mouseX>myX && mouseY>myY)
  { 
   myX+= (int)(Math.random()*12);
   myY+= (int)(Math.random()*12);
  }
   else if(mouseX<myX && mouseY<myY)
  {
   myX-= (int)(Math.random()*12);
   myY-= (int)(Math.random()*12);
  }
   else if(mouseX<myX && mouseY>myY)
  {
   myX-= (int)(Math.random()*12);
   myY+= (int)(Math.random()*12);
  }
   else if(mouseX>myX && mouseY<myY)
  {
   myX+= (int)(Math.random()*12);
   myY-= (int)(Math.random()*12);
  }
 else
  {
   myX+= (int)(Math.random()*12);
   myY+= (int)(Math.random()*12);
   myX-= (int)(Math.random()*12);
   myY-= (int)(Math.random()*12);
  }
 } 
} 
 
