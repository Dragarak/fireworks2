import shiffman.box2d.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.joints.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.collision.shapes.Shape;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import org.jbox2d.dynamics.contacts.*;

Box2DProcessing box2d;

Canon1 c1;
Canon2 c2;
Canon3 c3;
Canon4 c4;
Canon5 c5;


PImage tit,ins,fon;
int Juego=0;
PFont fuente; 

int x,y;

ArrayList<Luz> luces;



void setup(){
  box2d = new Box2DProcessing (this);  
  box2d.createWorld();
  box2d.setGravity(0, -10);  
  
  luces = new ArrayList<Luz>();
  
  size (500,400);
  
  c1 = new Canon1 (200,100,20,20);
  c2 = new Canon2 (200,100,20,20);
  c3 = new Canon3 (200,100,20,20);  
  c4 = new Canon4 (200,100,20,20);  
  c5 = new Canon5 (200,100,20,20);  


  tit= loadImage("titulo.png");
  ins= loadImage("instrucciones.png");
  fon= loadImage("fondo.png");
 
  fuente = loadFont("TektonPro-BoldCond-48.vlw");
}

void draw(){
  box2d.step();
      
  switch(Juego){
    case 0:
    titulo();
    break;
    
    case 1:
    instrucciones();
    break;

    case 2:
    juego();
    break;
  }
}
  
  void titulo(){
    image (tit,0,0); 
    textSize(15);
    
    text ("Click para continuar",170,290);
    if(mousePressed){
    Juego=1;
    }
  }

  void instrucciones(){
    image (ins,0,0);
    textFont (fuente);
    textSize(20);
    text ("Los controles para este juego son muy sencillos",20,70);
    text ("unicamente tienes que presionar los numeros del 1 al 5, asi los",20,100);
    text ("fuegos artificiales saldran.",20,125);
        
    textSize(20);
    text ("Presiona una tecla para empezar",130,310);
    if(keyPressed){
    Juego=2;
    }
  }
  
  void juego(){
    image (fon,0,0);
    c1.display();
    c2.display();
    c3.display();
    c4.display();
    c5.display();
    
    if (random(1) < 0.2) {
    Luz p = new Luz(width/2,300);
    luces.add(p);
    
    for (Luz b: luces) {
    b.display();
  }
  }
  for (int i = luces.size()-1; i >= 0; i--) {
    Luz b = luces.get(i);
    if (b.done()) {
      luces.remove(i);
    }
  }
    
  }
