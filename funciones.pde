void juego() {
  for (int B=0; B<4; B++) {
    fill (155);
    rect (400/4*B, 400-400/5, 100, 100);
    fill (255);
    rect (400/4*cuadriX[B], 400/5*cuadriY[B], 400/4, 400/5);
  }

  if (Mouse==true && fin==false) {
    if (mouseX>400/4*(cuadriX[3]) && mouseX<400/4*(cuadriX[3]+1) && mouseY>400-400/5 && mouseY<400) {
      Puntos++;
      cuadriX[3] = cuadriX[2];
      cuadriX[2] = cuadriX[1];
      cuadriX[1] = cuadriX[0];
      cuadriX[0] = int (random(0, 4));

      inicio = true;
    
    }
    Mouse = false;
  }
}

void  pantalla ( String  texto, int  px, int  py, int tamText ) {
  textSize (tamText);
  textAlign ( CENTER );
  text (texto, px, py);
}
