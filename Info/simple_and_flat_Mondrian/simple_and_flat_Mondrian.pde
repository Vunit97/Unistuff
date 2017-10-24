void setup()
{
  size (800, 600);
  frameRate(10);
}

void draw()
{
  float x = ownFunction(mouseX);
  float y = ownFunction(mouseY);
  
stroke(0,0,0); //komplett Umrandung
rect(0,0,99,99);

line(20,100,20,0); //Senkrechte Linie

rect(1,1,19,20);  //Kleines Quadrat,left corner

fill(0,0,0);     //Schwarzer Balken
rect(0,20,20,3);

fill(255,255,255); //Senkrechtes Rechteck
rect(1,23,19,44);

stroke(0,0,0); //Dunkel Blaues Rechteck
fill(0,0,128);
rect(1,68,18,30);



fill(240,35,0); //Blutrotes Quadrat
rect(21,1,77,66);

fill(255,255,255); //Waagerechtes Rechteckt
stroke(0,0,0);
rect(21,68,65,30);

rect(87,68,11,30); 

fill(255,220,0); //Gelbes Rechteck
rect(87,80,11,18);