PImage bild;

void setup(){
  size(480,640);
  bild = loadImage("tree.jpg");
  color c = color(255);
  int dimension = bild.width*bild.height;
  
  bild.loadPixels();
  for (int i = 0; i < dimension; i+=4) {
    bild.pixels[i] = color(c);
  }
  bild.updatePixels();
  image(bild,0,0,width,height);
}

void draw(){
 
  
}