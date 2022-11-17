//Abreu Lucas 88535/5
//https://youtu.be/pdz4gA9ieGI
Pantalla Pri;
PImage Titulo;
boolean [] Parte = new boolean [4];
boolean Mouse;

void setup() {
  size (400, 400);
  Titulo = loadImage ("Piano.jpg");
  Pri = new Pantalla();
}

void draw() {
  background (0);
  Pri.inicio();
}
void  pantalla ( String  texto, int  px, int  py, int tamText ) {
  textSize (tamText);
  textAlign ( CENTER );
  text (texto, px, py);
}
void mousePressed() {
  float A = dist (mouseX, mouseY, width/2, 40);
  int B = 120 / 2;

  if (A<B) {
    Parte [0] = false;
    Parte [1] = true;
  }
  if (mouseButton ==LEFT) {
    Mouse = true;
  }
}
