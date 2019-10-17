 //declare bacteria variables here   
 void setup()   
 {     
 	//initialize bacteria variables here
 	size(500, 500);   
 }   
 void draw()   
 {    
 	//move and show the bacteria   
 }  
 class Bacteria    
 {     
 	int myX, mY, myCol;
 	Bacteria(){
 		myX=250;
 		myY=250;
 		myCol=((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255))
 	}  
 	void move(){
 		myX+=(int)(Math.random()*5)-2;
 		myY+=(int)(Math.random()*5)-2;
 	}
 	void show(){
 		fill(myCol);
 		ellipse(myX, myY, 50, 50);
 	}
 }    