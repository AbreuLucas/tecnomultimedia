void  pantalla ( String  texto , int  px , int  py , int tamText ) {
  textSize (tamText);
  textAlign ( CENTER );
  fill ( 255 , 0 , 0 );
  text (texto, px, py);
}
boolean [] boton = new boolean [3];{
  boton[0] = true;}

void inicio(int px,int py,int R){
 if (boton[0]==true) {
   
    if (mousePressed){
      Parte [0] = false;
      Parte [1] = true;
}
    circle (px, py, R);}}
    

  
  
        
       
