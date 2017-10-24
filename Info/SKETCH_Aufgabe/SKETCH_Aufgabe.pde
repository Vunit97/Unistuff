


void setup()
{
  size(800,600, P3D);
  frameRate(15);

    
}

void draw()
{
  float x = ownFunction(mouseX);
  float y = ownFunction(mouseY);

  
  
  strokeWeight(random(5,20));
  
//fill (random(0,255),random(0,255),random(0,255));

// Großer Quadrat
//fill (0,50,y);
//rect(200,100,300,300); 

PImage img = loadImage("azad.jpg");
beginShape();
texture(img);
tint(random(0,255),random(0,255),random(0,255), random(0,255));
vertex(200,100,0,0);
vertex(500,100,128,0);
vertex(500,400,128,128);
vertex(200,400,0,128);
endShape();

//Obenlinks
fill (x,y,y-x);
rect(100,100,100,100);

strokeWeight(random(5,20));

//Rechteck mittel
fill (150,x-80,y);
rect(100,200,100,200);

strokeWeight(random(5,20));

//rechteck klein
fill (100,y,x);
rect(100,400,100,130);
strokeWeight(random(5,20));

//rechteck groß
fill (x-30,50,y);
rect(200,400,230,130);
strokeWeight(random(5,20));

//kleiner Quadrat 1
fill (y,x,30);
rect(430,400,70,130);
strokeWeight(random(5,20));

// kleiner Quadrat 2
fill (y,100,100);
rect(430,400,70,65);
  
  
  
}

float ownFunction(float a)
{
  a = a;
  return a;
}