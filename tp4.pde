//Abreu Lucas 88535/5
//https://youtu.be/pdz4gA9ieGI
Pantalla Pri;
Juego Piano;
int Tiempo = 0, MaxTiempo = 500, Puntos = 0, MaxPuntos = 25;
boolean Mouse, Inicio, Fin;
boolean [] Parte = new boolean [4];
int[] cuadriX=new int[4];
int[] cuadriY=new int[4];
PImage Titulo;

void setup() {
  size (400, 400);
  Titulo = loadImage ("Piano.jpg");
  Pri = new Pantalla();
  Piano = new Juego ();
  
    Parte [0] = true;
    Parte [1] = false;
    Parte [2] = true;
    Parte [3] = true;
    Mouse = false;
    Inicio = false;
    Fin = false;
  for (int A=0; A<4; A++) {
      cuadriX[A] = int (random(0, 4));
      cuadriY[A] = A;
    }
 }

void draw() {
 background (0);
 
   Pri.inicio();
   
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
void  pantalla ( String  texto, int  px, int  py, int tamText ) {
  textSize (tamText);
  textAlign ( CENTER );
  text (texto, px, py);
}
