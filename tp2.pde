// Abreu Lucas (88535/5)
// Comisión 1 - José Luis Bugiolachi
int cant =  10 ;
int tam;

void setup () {
  size ( 600, 600 );
  tam =  width / cant;
}

void draw () {
  background ( 0 );
  for ( int i = 0; i < cant; i ++ ) 
    for ( int j = 0; j < cant; j ++ ) {   
      float distancia = dist ( mouseX, mouseY, i * tam, j * tam );      
      float tono = distancia * 1500 / dist ( width, height, 0, 0 );
      for ( int c = tam; c > 0; c -= 10 ) {
        rectMode ( CENTER );
        noStroke ();
        float loco =  map ( c, tam, random ( 20 ), 0, 255 );
        fill ( 0, loco, 0 );
        rect (i * tam + tam / 2, j * tam + tam / 2, c, c );
        stroke ( 0, random ( 255 ), 0 );
        fill ( 0, random ( tono, loco ), 0 );
        ellipse ( tono, j * tam, tam, tam) ;
      }
      if ( mousePressed == true ) {
        rect ( random ( width ), random ( height ), random ( tam ), random ( tam ));
      } else {
        ellipse ( tono, j * tam, tam, tam );
      }
    }
}
