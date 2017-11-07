PImage bild;
PImage schild;
PImage merged;

size(1920, 1020);

schild = loadImage("schild.jpg");
bild = loadImage("bild.jpg");
merged = loadImage("merged.jpg");



schild.loadPixels();
bild.loadPixels();
merged.loadPixels();

int dimension = merged.width * merged.height;

for ( int i = 0; i < dimension; i++) {
  if ( red(schild.pixels[i]) > 150 && green(schild.pixels[i]) < 100 ) {
    
    merged.pixels[i] = bild.pixels[i];
      
  } else {
    merged.pixels[i] = schild.pixels[i];
    
  }
}

bild.updatePixels();
schild.updatePixels();
merged.updatePixels();

image(merged,0,0);