PImage Fondo, Imagen1, Imagen2, Imagen3, Boton, Fuego;
int Variable;
PFont Fuente;

void setup () {
  size (600, 400);
  Fondo = loadImage ("god of war.jpg");
  Imagen1 = loadImage ("god of war 1.jpg");
  Imagen2 = loadImage ("god of war 2.jpg");
  Imagen3 = loadImage ("god of war 3.jpg");
  Boton = loadImage ("Simbolo.png");
  Fuego= loadImage ("Fuego.png");
  Fuente = createFont("GODOFWAR", 1);
  textFont(Fuente);
  println (frameCount);
}

void draw () {

  Variable = frameCount;
  println (Variable);
  image (Fondo, 0, 0, width, height); 
  image (Fuego, 495, 264, 143, 143);
  fill (255, 0, 0); 
  textSize (50);
  text ("God of War II", 20, 450-Variable);
  if (frameCount>=330) {
    image (Imagen2, 100, 560-Variable, 150, 150);
  }
  textSize (30);
  text ("Protagonista:\nKratos", 10, 800-Variable);
  if (frameCount>=650) {
    image (Imagen3, 100, 865-Variable, 150, 150);
  }    
  if (frameCount>=950) {
    image (Imagen1, 250, 1150-Variable, 150, 150);
  }
  text ("Presonajes Secundarios:\nZeus\nAtenea\nCronos\nRey Barbaro\nAtlas\nIcaro\nMedusa", 10, 1100-Variable);
  textSize (20);
  text ("Soni Computer Intertaiment America", 10, 1500-Variable);
  text ("Santa Monica Studios\nDirector: Cory Barlog", 10, 1600-Variable);
  text ("Productor: Steve Caterson\nDirector Musical: Phillip Kovats", 10, 1750-Variable);
  if (frameCount>=1700) {
    text ("GRACIAS POR JUGAR!!!", 10, 2000-Variable);
  }
  fill (255, 255, 255, 0);
  stroke (random (255), 0, 0);
  circle (565, 372, 60);
  circle (565, 365, 25);
  image (Boton, 535, 340, 60, 60);
}

void mousePressed() {
  float D = dist (mouseX, mouseY, 565, 372);
  int R = 60 / 2;
  if (D<R) {
    {
      frameCount = (0);
    }
  }
}
