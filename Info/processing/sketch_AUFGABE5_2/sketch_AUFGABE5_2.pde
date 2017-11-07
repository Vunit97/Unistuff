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


for ( int y = 0; y < height; y++) {

  for ( int x = 0; x < width; x++ ) {

    merged.pixels[(y *width)+x] = schild.pixels[(y * width)+x];       // PixelIndex =  y * width +x . (Anzahl der vorherigen Reihen * Breite + x-te Stelle)

    if ( red(schild.pixels[(y * width)+ x]) > 150 && green(schild.pixels[y *width + x]) < 100 ) {

      if ( x > 1070 ) {
        merged.pixels[(y*width)+x] = bild.pixels[(y*width)+x];
      }
    }
  }
}

bild.updatePixels();
schild.updatePixels();
merged.updatePixels();

image(merged, 0, 0);