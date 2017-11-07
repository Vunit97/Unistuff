PImage bild;

void setup(){
  size(480,640);
  bild = loadImage("tree.jpg");
  color c = color(255);
  
  bild.loadPixels();
  for (int i = 0; i < width; i++) {
    for(int j = 0; j < height; j+=4) {
    bild.pixels[i+j*width] = color(c);
    }
  }
  bild.updatePixels();
  image(bild,0,0,width,height);
}

void draw(){
 
  
}