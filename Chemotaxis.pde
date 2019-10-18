 //declare bacteria variables here 
 Bacteria [] bacterium = new Bacteria[(int)(Math.random()*200+1)];  
 void setup()   
 {     
 	//initialize bacteria variables here
 	size(500, 500); 
	background(0);
	for(int i = 0; i < bacterium.length; i++)
	{
   		bacterium[i] = new Bacteria();
	}

 }   
 void draw()   
 {    
 	//move and show the bacteria
 	fill(0);
 	rect(0, 0, 500, 500);
 	for (int i=0; i<bacterium.length; i++){
 		bacterium[i].show();
 		bacterium[i].move();
 	}
 }  
 class Bacteria    
 {     
 	int myX, myY, myCol, temp;
 	Bacteria(){
 		myX=250;
 		myY=250;
 		temp=5;
 		myCol=color((int)(255*Math.random()), (int)(255*Math.random()), (int)(255*Math.random()));
 	}  
 	void move(){
 		myX+=(int)(Math.random()*temp)-temp/2;
 		myY+=(int)(Math.random()*temp)-temp/2;
 	}
 	void show(){
 		fill(myCol);
 		noStroke();
 		ellipse(myX, myY, 5, 5);
 	}
 }    