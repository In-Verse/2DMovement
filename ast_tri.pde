//Init
boolean keyWPressed = false;
boolean keyAPressed = false;
boolean keyDPressed = false;
boolean keySPressed = false;
boolean keyQPressed = false;
Ship shipThing = new Ship(400, 200); //object

void setup(){ //init environment
  size(720, 500);
  frameRate(60);//60/sec
  smooth();//anti-alias
}

void draw(){
  background(0); //black
  fill(255); //white
  text("Move with WASD", 50, 30);
  shipThing.run();
  //println( "\n\nVelocity: " + shipThing.velocity );
  //println( "Rotation degrees: " + shipThing.rotation );
  text( "\n\nVelocity: " + shipThing.velocity, 50,40);
  text( "Rotation degrees: " + shipThing.rotation,50,80);
  //printMatrix();
  //text(mouseX + "," + mouseY);
  //println ("X: " + mouseX + "," + "Y: " + mouseY);
}

void keyPressed(){
  if(key == 'w'){keyWPressed = true;}
  if(key == 's'){keySPressed = true;}
  if(key == 'a'){keyAPressed = true;}
  if(key == 'd'){keyDPressed = true;}
  if(key == 'q'){keyQPressed = true;}

}

void keyReleased(){
  if(key == 'w'){keyWPressed = false;}
  if(key == 's'){keySPressed = false;}
  if(key == 'a'){keyAPressed = false;}
  if(key == 'd'){keyDPressed = false;}
  if(key == 'a'){keyQPressed = true;}

}

class This{
  PVector pos = new PVector(0,0);
  PVector delta = new PVector(0,0);
  float rotation = 0.0;
  float rotationRate = 1.0;
  This( PVector POS ){
    pos = POS;
  }
 
void run(){
  pushMatrix(); //save
    translate( pos.x, pos.y );
    rotate( radians( rotation ));
    beginShape();
      vertex( -10, -10 );
      vertex(  10, -10 );
      vertex( -10,  10 );
      vertex(  10,  10 );
    endShape(CLOSE);
    popMatrix(); //restore
    rotation += rotationRate;
    if( rotation > 360 ){ rotation = 0; }
    if( rotation < 0 ){ rotation = 360; }
  } 
}

class Ship{
  float posx;
  float posy;
  float acceleration = 0.02;
  float velocity;
  float velocityMin = -10.0;
  float velocityMax = 10.0;
  float rotation = 0.0;
  float rotationRate = 3;
  float newDirection = 0.0;
  Ship( int POSX, int POSY ){
    posx = POSX;
    posy = POSY;
  }
  void run(){
//I'd ship this
      noFill();
      stroke(255);
      pushMatrix();
       translate(posx, posy);
       rotate(radians(rotation));
       beginShape();
       vertex(20,0);
       vertex(-10,-10);
       vertex(-5,0);
       vertex(-10,10);
       endShape(CLOSE);
      delay(5);
      printMatrix();
      println ("X: " + posx + "," + "Y: " + posy);
      popMatrix();
//Ship on the move
      posx += (velocity * Math.cos(radians(rotation)));
      posy += (velocity * Math.sin(radians(rotation)));
      if(velocity > velocityMax) { velocity = velocityMax; }
      if(velocity < velocityMin) { velocity = velocityMin; }

      // Within 0 - 360 range
      if(rotation > 360){rotation = 0;}
      if(rotation < 0){rotation = 360;}
      if(keyWPressed){
        velocity += acceleration;
      }
        if(keySPressed){
        velocity -= acceleration;
      }
      if(keyAPressed){
        rotation -= rotationRate;
      }
      if(keyDPressed){
        rotation += rotationRate;
      }
      // Repositions
      if(posx > width+10)         {posx = width-width-10;}
      if(posx < width-width-10)   {posx = width+10;}
      if(posy > height+10)        {posy = height-height-10;}
      if(posy < height-height-10) {posy = height+10;}
  }
}
