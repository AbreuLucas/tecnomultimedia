class Juego {
  int[] cuadriX=new int[4];
  int[] cuadriY=new int[4];
  int Puntos = 0;
  boolean Inicio, Fin;
  boolean [] Parte = new boolean [4];
  Juego() {
    Mouse = false;
    for (int A=0; A<4; A++) {
      cuadriX[A] = int (random(0, 4));
      cuadriY[A] = A;
    }
  }

  void jugando() {

    for (int B=0; B<4; B++) {
      fill (155);
      rect (400/4*B, 400-400/5, 100, 100);
      fill (255);
      rect (400/4*cuadriX[B], 400/5*cuadriY[B], 400/4, 400/5);
    }
    if (Mouse ==true && Fin == false) {
      if (mouseX>400/4*(cuadriX[3]) && mouseX<400/4*(cuadriX[3]+1) && mouseY>400-400/5 && mouseY<400) {
        Puntos++;
        cuadriX[3] = cuadriX[2];
        cuadriX[2] = cuadriX[1];
        cuadriX[1] = cuadriX[0];
        cuadriX[0] = int (random(0, 4));

        Inicio = true;
      }
      Mouse = false;
    }
  }
 
}
