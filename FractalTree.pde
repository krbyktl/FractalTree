private double fractionLength = .9; 
private int smallestBranch = 5; 
private double branchAngle = .4;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(255);  
  strokeWeight(2);
	stroke(102, 49, 49);   
	line(320,480,320,380);   
	drawBranches(320, 380,100,3*Math.PI/2);
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
  double angle1 = angle + branchAngle;
  double angle2 = angle - branchAngle;
  double angle3 = angle;
  branchLength = branchLength*fractionLength;
  int endX1 = (int)(branchLength*Math.cos(angle1) + x);
  int endY1 = (int)(branchLength*Math.sin(angle1) + y);
  int endX2 = (int)(branchLength*Math.cos(angle2) + x);
  int endY2 = (int)(branchLength*Math.sin(angle2) + y);
  int endX3 = (int)(branchLength*Math.cos(angle3) + x);
  int endY3 = (int)(branchLength*Math.sin(angle3) + y);
  line(x, y, endX1, endY1);
  line(x, y, endX2, endY2);
  line(x, y, endX3, endY3);
  if(branchLength > smallestBranch)
  {
    drawBranches(endX1, endY1, branchLength-5, angle1);
    drawBranches(endX2, endY2, branchLength-5, angle2);
    drawBranches(endX3, endY3, branchLength-5, angle3);
  }
} 