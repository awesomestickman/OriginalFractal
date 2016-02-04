 int uuu  = 1;
 int rotator=1;
public void setup(){

  size(800,800);
 

}
public void draw(){
	
	
	fill(255,255,255);
	rect(0, 0, 800, 800);
	

	pushMatrix();



    translate(mouseX,mouseY);
    for(int i=0;i<rotator;i++){
    rotate(PI/64);
}
    fractal(0,0,80);

     popMatrix();
     rotator++;
}

public void fractal(float x,float y,float swag){
//if(swag<11){
	//fill(20,40,9);
	//System.out.println(x);
	//System.out.println(y);

	int r= (int)(Math.random()*250);
	int g= (int)(Math.random()*250);
	int b= (int)(Math.random()*250);
	fill(r,g,b);



     ellipse(x, y, swag, swag);

   


	

//}
//else{

//int atomizer= (int)(Math.random()*20);
//System.out.println(atomizer);
if(swag>11){
	fractal(x,y,swag/2);
	fractal(x+swag*1.5,y,swag-10);
	fractal(x,y+swag*1.5,swag-10);
}


}