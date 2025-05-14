void setup(){
  size(48,48); 
}

void draw(){
  // 3 imagenes
  for(int i=0;i<3;i++){
    background(255);
    strokeWeight(4);
    
    pushMatrix(); // Traslacion de objetos
    
    //Algoritmo para coordenadas
    float r = random(8, width/2);
    float x = random(r, width - r);
    float y = random(r, height - r);
    
    stroke(100,100,100);
    
    translate(x,y); // Va con pushMatrix
    
    if(i==0){
      circle(0,0,(r*2));
      saveFrame("data/circles/circle###.png");
    }else if(i==1){
      rectMode(CENTER); //centro como punto de referencia
      rotate(random(-0.1,0.1));
      square(0,0,(r*2));
      saveFrame("data/squares/square###.png");
    }else if(i==2){
      rotate(random(-0.1,0.1));
      triangle(0,-r,r,r,-r,r);
      saveFrame("data/triangles/triangle###.png");
    }
    
    popMatrix();
  }
  
  if(frameCount==100){
    exit();
  }
}
