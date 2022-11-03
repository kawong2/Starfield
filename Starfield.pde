Particle [] fireworks = new Particle[1000];
void setup()
{
  size(400,400);
  for (int i = 0; i < fireworks.length; i++){
    fireworks[i] = new Particle();
    for(int k = 0; k < 11; k++){
    fireworks[k]=new OddballParticle();
    }
  } 
}//end of setup 

void draw()
{
  background(40,53,95);
for(int i = 0; i < fireworks.length ; i++){
  fireworks[i].move();
  fireworks[i].show();
  } 
}//end of draw 

void mousePressed(){
for (int i = 0; i < fireworks.length; i++){
  fireworks[i].disperse();
  }
}//when the mouse is pressed it will restart

class Particle
{
  int myColor;
  double myX, myY,myAngle, mySpeed;
  Particle(){
  myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  myAngle = Math.random()*2*Math.PI;
  mySpeed= Math.random()*14;
  myX = 150 ;
  myY = 150;
  }
  void move(){
  myX = myX + Math.cos(myAngle) * mySpeed;
  myY = myY + Math.sin(myAngle)*mySpeed;
  }//the fireworks moving
  
  void show(){
    fill(myColor);
    ellipse((float)myX+30, (float)myY+50, 2,6);
  }//the "fireworks"
  void disperse(){
    myX = 170;
    myY= 155;
  }//restart position 
}//end of class particle

class OddballParticle extends Particle  //inherits from Particle
{
  OddballParticle(){
  mySpeed = Math.random()*3;
  }
  void move(){
  myX = myX + Math.cos(myAngle) * mySpeed;
  myY = myY + Math.sin(myAngle)*mySpeed;
  }//mickies moving 
  void show(){
    fill(0);
    noStroke();
    ellipse((float)myX,(float)myY, 20,20);
    ellipse((float)myX+10,(float)myY-14, 15,15);
    ellipse((float)myX-10,(float)myY-14, 15,15);
  }//mickies 
}//end of extended class 
