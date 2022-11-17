class Pantalla {
  Juego jugar;
  String [] Texto = {"Toca el cuadro gris cuando\nel cuadrado blanco este por encima\npara sumar puntos (maximo 25)\nantes de que el tiempo llegue a 500.", "INICIAR", "GANASTE", "PERDISTE"};
  int Tiempo = 0, MaxTiempo = 500, Puntos = 0, MaxPuntos = 25;
  boolean Inicio, Fin;
  boolean [] Parte = new boolean [4];

  Pantalla() {
    jugar = new Juego ();
    Parte [0] = true;
    Parte [1] = false;
    Parte [2] = true;
    Parte [3] = true;
    Inicio = false;
    Fin = false;
  }

  void inicio() {
    if (Inicio==true && Tiempo<MaxTiempo) {
      Tiempo++;
    } else if (Tiempo==MaxTiempo) {
      Inicio = false;
      Fin = true;
    }

    if (Parte [0] == true) {
      image (Titulo, 0, 0, width, height);
      fill(255, 0, 0);
      pantalla (Texto[0], width/2, 300, 20);
      pantalla (Texto[1], width/2, 50, 20);
    }

    if (Parte [1] == true) {  
      jugar.jugando();
      fill (random(255), random(255), 0);
      textSize(25);
      text ("puntación:" + Puntos, 300, 50);
      text ("tiempo:" + Tiempo, 100, 50);
    }

    if (Puntos == MaxPuntos && Tiempo < MaxTiempo && Parte [2] == true) {
      background (0, 255, 0);
      fill (0);
      pantalla (Texto [2], width/2, height/2, 50);
      textSize (20);
      text ("Presiona la tecla ENTER\npara Reiniciar", width/2, 300);
    } else if (Tiempo == MaxTiempo && Puntos < MaxPuntos && Parte [3] == true) {
      background (255, 0, 0);
      fill (0);
      pantalla (Texto [3], width/2, height/2, 50);
      textSize (20);
      text ("Presiona la tecla ENTER\npara Reiniciar", width/2, 300);
    }

    if (keyPressed) {
      if (key==ENTER) {
        Parte [0] = true;
        Parte [1] = false;
        Parte [2] = false;
        Parte [3] = false;
        Puntos = 0;
        Tiempo = 0;
      }
    }
  }
}
