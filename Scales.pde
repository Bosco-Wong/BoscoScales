void setup(){
  size (1200,800);
  background(255,255,255);
}

void scale(int x, int y){
  float random = (float)Math.random();
  if (random < 0.2) {
    fill(200, 0, 10);
  }
  else if (random < 0.9) {
    fill (255,255,255);
  }
  else {
    fill(0);
  }
  //conditional to decide color 
  beginShape();
  curveVertex(x, y);
  curveVertex(x, y);
  curveVertex(x+ 20, y + 23);
  curveVertex(x, y + 50);
  curveVertex(x, y + 50);
  endShape();
  //right scale
  
  beginShape();
  curveVertex(x, y);
  curveVertex(x, y);
  curveVertex(x-20, y + 23);
  curveVertex(x, y + 50);
  curveVertex(x, +50);
  endShape();
  }
  //left scale
  



void draw (){
  System.out.println(mouseX);
  System.out.println(mouseY);
  //print out mouse x and y
 
 
  for ( int y = -10; y < 850; y +=25){
  for( int x = -10; x < 1250; x+=20) {
    scale(x,y);
   // scales loop
 
  }
  }
 delay(5000);
  //delay so that every 5 seconds, the scales have randomized colors
  
/*   if (mousePressed == true) {
    for ( int y = -10; y < 850; y +=25){
  for( int x = -10; x < 1250; x+=20) {
    scale(x,y);
    loop();
    }
  }
}
    */
    //conditional to change scale pattern when left clicked (didn't work sadly)
 
  
}





