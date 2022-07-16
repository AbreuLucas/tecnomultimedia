//Abreu Lucas; Legajo 88535/5
//https://youtu.be/dcF8ofiW6mk
PImage titulo;
String [] Texto = {"Toca el cuadro gris cuando\nel cuadrado blanco este por encima\npara sumar puntos (maximo 25)\nantes de que el tiempo llegue a 500.", "INICIAR", "GANASTE!", "PERDISTE!"};
int Tiempo = 0, MaxTiempo = 500,Puntos = 0, MaxPuntos = 25;
boolean [] Parte = new boolean [4];
int[] cuadriX=new int[4];
int[] cuadriY=new int[4];
boolean Mouse, inicio, fin;
void setup() {
  size (400, 400;)
  titulo = loadImage ("piano.jpg");
  Parte [0] = true;
  Parte [1] = false;
  Parte [2] = true;
  Parte [3] = true;
  Mouse = false;
  inicio = false;
  fin = false;
  for (int A=0; A<4; A++) {
    cuadriX[A] = int (random(0, 4));
    cuadriY[A] = A;
  } 
}

void draw() {
  background (0);
 
 if (inicio==true && Tiempo<MaxTiempo) {
    Tiempo++;
  } else if (Tiempo==MaxTiempo){
    inicio = false;
    fin = true;
  }
  if (Parte[0] == true) {
    image (titulo, 0, 0, width, height);
    fill(255, 0, 0);
    pantalla (Texto[0], width/2, 300, 20);
    pantalla (Texto[1], width/2, 50, 20);
  }

  if (Parte[1] == true) {
    juego();
    fill (random(255), random(255), 0);
    textSize(25);
    text ("puntación:" + Puntos, 300, 50);
    text ("tiempo:" + Tiempo, 100, 50);}
 
  if (Puntos == MaxPuntos && Tiempo < MaxTiempo && Parte[2] == true) {
    background (0, 255, 0);
    fill (0);
    pantalla (Texto[2], width/2, height/2, 50);
    textSize(20);
    text ("presiona la tecla ENTER\npara reiniciar", width/2, 300);
}
  else if (Tiempo==MaxTiempo && Puntos<MaxPuntos && Parte[3] == true) {
    background (255, 0, 0);
    fill (0);
    pantalla (Texto[3], width/2, height/2, 50);
    textSize(20);
    text ("presiona la tecla ENTER\npara reiniciar", width/2, 300);
  }
 
  if (keyPressed) {
    if (key==ENTER) {
      Parte[0]=true;
      Parte[1]=false;
      Parte[2]=false;
      Parte[3]=false;
      Puntos = 0;
      Tiempo = 0;
    }
  }
}

void mousePressed() {
  float A = dist (mouseX, mouseY, width/2, 40);
  int B = 120 / 2;

  if (A<B) {
    Parte [0] = false;
    Parte [1] = true;
  }

 if (mouseButton==LEFT) {
   
    Mouse = true;
  } 
}
  
 
