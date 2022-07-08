void juego() { 

  for (int x=0; x<cant; x++) {
    fill (0);
    stroke (255);
    rect (x*tam, 0, tam, height);
  }

  for (int i=0; i<cant; i++) {

    fila[i][0] = -440;
    fila[i][1] = -760;
    fila[i][2] = -1080;
    fila[i][3] = -1560;
    fila[i][4] = -1800;
    fill (255);
    stroke(0);
    rect (15, fila[i][i]+BAJA, 50, 80);
  }

  for (int i=0; i<cant; i++) {
    fila[i][0] = -200;
    fila[i][1] = -600;
    fila[i][2] = -1160;
    fila[i][3] = -1720;
    fila[i][4] = -2040;
    fill (255);
    stroke(0);
    rect (95, fila[i][i]+BAJA, 50, 80);
  }
  
  for (int i=0; i<cant; i++) {
    fila[i][0] = -520;
    fila[i][1] = -920;
    fila[i][2] = -1240;
    fila[i][3] = -1640;
    fila[i][4] = -1120;
    fill (255);
    stroke(0);
    rect (175, fila[i][i]+BAJA, 50, 80);
  }
  
  for (int i=0; i<cant; i++) {
    fila[i][0] = -360;
    fila[i][1] = -840;
    fila[i][2] = -1320;
    fila[i][3] = -1480;
    fila[i][4] = -1960;
    fill (255);
    stroke(0);
    rect (255, fila[i][i]+BAJA, 50, 80);
  }
  
  for (int i=0; i<cant; i++) {
    fila[i][0] = -280;
    fila[i][1] = -680;
    fila[i][2] = -1000;
    fila[i][3] = -1400;
    fila[i][4] = -1880;
    fill (255);
    stroke(0);
    rect (335, fila[i][i]+BAJA, 50, 80);
  }
}
