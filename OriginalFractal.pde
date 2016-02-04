 int uuu  = 300;
public void setup(){

  size(800,800);
 

}
public void draw(){
	fill(255,255,255);
	rect(0, 0, 800, 800);
	fill(20,40,9);
    fractal(40,40,150);
}

public void fractal(float x,float y,float swag){
if(swag<11){
	//fill(20,40,9);
	//System.out.println(x);
	//System.out.println(y);
	ellipse(x, y, swag*(x/uuu), swag*(y/uuu));


}
else{

//int atomizer= (int)(Math.random()*20);
//System.out.println(atomizer);
	fractal(x,y,swag/2);
	fractal(x+swag*1.5,y,swag-10);
	fractal(x,y+swag*1.5,swag-10);
}


}