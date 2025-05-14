void setup(){
  size(128,128); 
}

void draw(){
  background(255);
  strokeWeight(4);
  
  // float r = random(2, 64); //Radio, al pasarse como diametro será 64=>128
  float r = random(2, width/2); 
  float x = random(r, width - r);
  float y = random(r, height -r);
  
  // color de borde (RGB)
  stroke(random(100), random(100), random(100));
 
  circle(x,y,(r*2));
  saveFrame("data/circle###.png"); // ### => será reemplazadas por 001, 002, etc
  
  if(frameCount == 100){
    exit();
  }
}
