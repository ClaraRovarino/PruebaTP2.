//Clara Rovarino
PFont fuente; 
int movimientofuente = -100;
PImage fondo1, fondo2, fondo3, fondo4, fondo5, fondo6;
PImage personaje1, personaje2, personaje3, personaje4, personaje5, personaje6, personaje7, personaje8; 
int estado = 0;

void setup() {
  size(700, 500);
  //fondos:
  fondo1 = loadImage("Fondounoreducido.png"); // Carga el archivo
  fondo2 = loadImage("Fondodos.PNG");
  fondo3 = loadImage ("Fondo3.PNG");
  fondo4 = loadImage ("Fondo4.PNG");
  fondo5 = loadImage ("Fondocreditosreducido.png");
  fondo6 = loadImage ("Fondofinal.PNG");
  fuente = loadFont("Serif.bold-48.vlw");
  
  //personajes: 
  personaje1 = loadImage("Pooh_imagen.png");
  personaje2 = loadImage("Tigger_Imagen.png");
  personaje3 = loadImage("Piglet_Imagen.png"); 
  personaje4 = loadImage("Conejo_Imagen.png");
  personaje5 = loadImage("Buho_Imagen.png"); 
  personaje6 = loadImage("Igor_Imagen.png"); 
  personaje7 = loadImage("Kangu y rito_Imagen.png");
  personaje8 = loadImage("Chistopher Robin_Imagen.png"); 
  

  fondo1.resize(700, 500);  // Resolucion que quiero tener
  fondo2.resize(700, 500);  // Resolucion que quiero tener
  fondo3.resize(700, 500);  // Resolucion que quiero tener
  fondo4.resize(700, 500);  // Resolucion que quiero tener
  fondo5.resize(700, 500);  // Resolucion que quiero tener

  textFont(fuente, 52); 
  frameRate(40);
}
void draw() {
  surface.setTitle("FPS: "+frameRate);
  // println(frameCount);
  if (estado == 0) {
    movimientofuente+=2;  
    image(fondo1, 0, 0, width, height);
    text("Winnie The Pooh", 150, movimientofuente);
    if (movimientofuente > height + 50) {
      estado = 1;
      movimientofuente = -100;
    }
  } else if (estado == 1) {
    movimientofuente+=3;
    image(fondo2, 0, 0, width, height);// Primer fondo 
    image(personaje1, 500,300,100,150);//Imagen de Pooh
    image(personaje2, 60,60, 100, 150); //Imagen de Tigger 
    image(personaje3, 400,200, 100,150);//Imagen de Piglet
    textSize(40);
    text("Protagonizado por: Winnie Pooh", 50, movimientofuente);
    text( "Tigger",200, 240);
    text("Piglet", 200, 90);
    if (movimientofuente > 500) {
      estado = 2;
      movimientofuente = -100;
    }
  } else if  (estado == 2) {
    image(fondo3, 0, 0, width, height); 
    image(personaje4, 60,300,100,180);//Imagen de Conejo
    image(personaje5, 350, 280, 200, 200); //imagen de Buho
    image(personaje6, 400, 70, 150,100); //Imagen de Igor 
    text("Conejo", 250, 100);
    text("Buho", 250, 200);
    text("Igor", 250, 300);
    movimientofuente++;
    if (movimientofuente > 100) {
        estado = 3;
        movimientofuente = -100;
         }
  } else if (estado == 3) {
    movimientofuente+=3;
    image(fondo4, 0, 0, width, height);
    image(personaje7, 400, 100, 150,150);//Imagen de Kangu y Rito


    text("Kangu",230,100);
    text("Rito",230, 200);
    text("Christopher Robin",230,300);
    
    if (movimientofuente > 200){
      estado = 4;
      movimientofuente = -100;
    }
  } else if (estado == 4) {
    image(fondo5, 0, 0, width, height); 
    text("Dirijido por:Stephen Anderson",100,90);
    text("Don Hall",100,130); 
    text("Música: Kristen Anderson-Lopez", 100,290);
    text("Robert Lopez", 100, 350); 
 
    if (movimientofuente > 100){
      estado = 5;
      movimientofuente = -100;
    }
  } else if (estado == 5) {
    image(fondo6, 0, 0, width, height); 
    text("Haz click para ver de nuevo",200,300);
    textSize(40);
    text("Presentada por Walt Disney Studios", 40,250);
    textSize(20); 
    {
  }
  }
  println("height: ", height);
  println("frameCount: ", frameCount);
  println("movimientofuente: ", movimientofuente);
}


void mouseClicked() {
  movimientofuente = -100;
  estado = 0;
}
