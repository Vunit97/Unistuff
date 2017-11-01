PImage bild;
void setup() {
size(640,480);
bild = loadImage("angel.jpg");
// Before we deal with pixels
bild.loadPixels();
// Loads the image pixels into the pixels[] array
for (int i = 0; i < bild.pixels.length; i++) {
float g = green(bild.pixels[i]);
float r = red(bild.pixels[i]);
float b = blue(bild.pixels[i]);


color c = color(0.3*r+0.59*g+0.11*b);
// Set pixel at that location to new color
bild.pixels[i] = c;
}
// When we are finished dealing with pixels
bild.updatePixels();
image(bild, 0, 0);
}
void draw() {
}