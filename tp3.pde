//Abreu Lucas, 88535/5
PImage titulo;
String [] Texto = {"Iniciar", "jugando", "GANASTE!", "PERDISTE!"};
int BAJA, tam;
int cant = 5;
int max = 25;
int puntos;
boolean [] Parte = new boolean [cant];
float [][] fila = new float [cant][cant];

void setup() {
  size (400, 400);
  tam = width/cant;
  titulo = loadImage ("Piano.jpg");
  textSize ( 24 );
  textAlign ( CENTER );
  fill(0, 255, 255);
  puntos =  0 ;
  Parte [0] = true;
}

void draw() {

  if (Parte[0] == true) {
    image (titulo, 0, 0, width, height);
    fill (255, 0);
    inicio (width/2, 350, 150);
    pantalla (Texto[0], width/2, 365, 40);
  }

  if (Parte[1] == true) {
    BAJA = frameCount;
    juego();
    stroke (random(255), random(255), random(255));
    line (0, 310, 400, 310);
    fill (random(255), random(255), 0);
    textSize(25);
    text ("puntación:"+puntos, 300, 50);
  }

  if (puntos == max) {
    Texto[2] = "GANASTE!";
  }

  if (puntos < max) {
    Texto[3] = "PERDISTE";
  } else if (Texto[2].equals ("GANASTE!")) {
    background (0, 255, 0);
    fill (0);
    text( Texto[2], width/2, height/2, 100);
  } 
  if ( Texto[3].equals ("PERDISTE!")) {
    background (255, 0, 0);
    fill (0);
    text (Texto[3], width/2, height/2, 100);
  }
}
void keyPressed() {

  if (key == ENTER) {

    frameCount = (0);
    puntos =  (0);
  }
}

void mousePressed() {

  if (Texto[1].equals ("jugando")) {
    if (mouseX > 0 && mouseX < 400 && mouseY > 310 && mouseY < 400) { 
      puntos ++;
    }
  }
}
