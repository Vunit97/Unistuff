
void setup(){
   size(100,100, P3D);
   strokeWeight(3);
 
  PImage img = loadImage("drache.jpg");
  noStroke();
  beginShape();
  texture(img);
  vertex(21,0,0,0);    
  vertex(100,0,256,0);    
  vertex(100,77,256,256);   
  vertex(21,77,0,256);    
  endShape();
}

void draw(){
  
  float x = ownFunction(mouseX);
  float y = ownFunction(mouseY);

    
fill(x,y-x,y);
rect(1,1,19,20);  //Kleines Quadrat

fill(0,0,0);     //Schwarzer Balken
rect(0,20,20,3);

fill(255,255,255); //Senkrechtes Rechteck
rect(1,23,19,44);

stroke(0,0,0); //Dunkel Blaues Rechteck
fill(y,x,0);
rect(1,68,19,30);


fill(255,255,255); //Waagerechtes Rechteckt
stroke(0,0,0);
rect(21,68,65,30);

rect(87,68,11,30); 

fill(255,220,0); //Gelbes Rechteck
rect(87,80,11,18);

}

float ownFunction(float a)
{
  a = a;
  return a;
}