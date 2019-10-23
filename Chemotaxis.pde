 Bacteria [] bacterium = new Bacteria[(int)(Math.random()*500+1)];  
int temp = 15;
boolean exploded = false;
int pressure = 15;
 void setup()   
 {     
   //initialize bacteria variables here
   size(1000, 1000); 
  background(0);
  for(int i = 0; i < bacterium.length; i++)
  {
       bacterium[i] = new Bacteria();
  }
    keyPressed();
 }   
 void draw()   
 {    
   //move and show the bacteria 
   fill(0);
   rect(0, 0, 1000, 1000);
   if (!exploded){
   fill(155, 255, 255, 75);
   rect(300, 250, 400, 500, 20);
   }
   if(temp>=45){
     exploded = true;
     fill(0);
     rect(300, 250, 400, 500, 20);
     fill(255);
     textSize(50);
     text("Pressure too high", 300, 300);
   }
   if (temp>=65){
     fill(0);
     rect(0, 0, 1000, 1000);
     fill(255);
     text("You broke the thermometer", 220, 200);
   }
   if (temp<=1){
     fill(255);
     textSize(50);
     text("Absolute zero", 300, 300);
   }
       fill(255);
       textSize(30);
       text("Pressure: "+pressure+" psi", 750, 800);
   fill(245, 241, 225);
   rect(800, 250 , 150, 500, 20);
   for (int i=1; i<20; i++){
   stroke(0);
   line(840, 270+i*20, 850, 270+i*20);
   }
   noStroke();
   fill(245, 0, 0);
   ellipse(875, 675, 50, 50); 
   rect(860, 570-temp*5, 30, 100+temp*5, 20);
   for (int i=0; i<bacterium.length; i++){
     bacterium[i].show();
     bacterium[i].move();
   }
   
 }  
 void keyPressed(){
   if(key == CODED){
     if(keyCode==UP){
       temp+=2;
       pressure+=2;
       System.out.println(temp);
     }else if (keyCode==DOWN){
       temp-=2;
       pressure-=2;
     }
   }
 }
 class Bacteria    
 {     
   int myX, myY, myCol;
   Bacteria(){
     myX=500;
     myY=500;
     //temp=500;
     myCol=color((int)(255*Math.random()), (int)(255*Math.random()), (int)(255*Math.random()));
   }  
   void move(){
     if (exploded){
       myX+=(int)(Math.random()*temp-temp/2);
       myY+=(int)(Math.random()*temp-temp/2);
     }
     if (myX>300 && myX<700 && temp<45){
     myX+=(int)(Math.random()*temp-temp/2);
     }
     if (myY>250 && myY<750 && temp<45){
     myY+=(int)(Math.random()*temp-temp/2);
     }
     if (myX<=300 && temp<45 && !exploded){
       myX+=(int)(Math.random()*temp);
     }
     if (myX>=700 && temp<45 && !exploded){
       myX-=(int)(Math.random()*temp);
     }
     if (myY<=250 && temp<45 && !exploded){
     myY+=(int)(Math.random()*temp);
     }
     if (myY>=750 && temp<45 && !exploded){
     myY-=(int)(Math.random()*temp);
     }
     if (temp<0){
       temp=1;
       pressure=0;
     }
   }
   void show(){
     fill(myCol);
     noStroke();
     ellipse(myX, myY, 10, 10);
   }
 }    
