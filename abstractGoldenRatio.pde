/******************************************************
 * Assignment 4
 * Name:    Ilisha Ramachandran
 * E-mail:  iramachand@brynmawr.edu
 * Course:      CS 110 
 * Submitted:  28th September 2015  
 * 
 * Create a piece of abstract computational art
 *
   You can control the sides of the polygon by changing the variable polySize 
   in the Golden Ratio function called in void draw(). It is set as 3 right now.  
   
   Pressing the MOUSE changes the polygons into aliens
   
   Pressing SPACEBAR or ENTER returns the polygons back to the spaceship.
 
   Holding MOUSE and SPACEBAR or ENTER, returns the aliens back to the spaceship. 
 *
 *
********************************************************/

int x = 0;

void setup(){
  
  size(displayWidth,displayHeight,P3D);
  //changes the colour mode so we can control the hue 
  colorMode(HSB);
  //rectangle mode is corner for drawing the spaceship 
  rectMode(CORNER);
}

/*********************** draws everything **********************/
void draw(){
  
  background(0);

//draws spaceShip
spaceShip(width,height);
//draws goldenRatio
goldenRatio(width-width/5,(height-(2*height/3))+(height/5),3);
}   

/******************* goldenRatio function *********************/
void goldenRatio(int xpos,int ypos, int polySize){
  
  translate(xpos,ypos);

// 512 is the number of aliens or polygons
  for (int t=0; t<512; t++){
    
    //to control the colour 
    int c = t;
    //shades of colour 
    if (c > 256){
    c-=256;
    }
    
    //rotates in the golden ratio (angle = 137.5)
    rotateZ(137.5*2);
    rotateX(137.5);
    rotateY(137.5);
    
    //size in relation to starting position 
    if(t+x < 0){
      
      //pressing the mouse calls alien 
      if (mousePressed) {
      drawAlien(t+x, 0, 2*sqrt(abs(t+x)),c);
    } else {
      //otherwise it will just be polygons 
      polygon(t+x, 0, 2*sqrt(abs(t+x)), polySize,2,c);
    } 
    }
  }
  
  //makes the aliens or polygons move outwards from the starting position
  //this also controls the speed at which the aliens or polygons are spinning 
  x-=1.5;
  
  //sucks all the aliens or polygons back into the spaceship
  if (keyPressed) {
    if (key == ' ' || key == ENTER) {
      //changing this changes the speed at which they are sucked back 
      x +=10; 
    
    }
  }
  }

    
/**************************** Spaceship function  ****************************/

void spaceShip(int x, int y){
 
noStroke();
  fill(#3281E0);
  rect(x-x/5,y-(2*y/3),x/7,y-y/2);
  quad(x-x/5.5, y-(7*y)/20, x-(7*x/30), y-y/5, x-x/5.5, y,x-(4*x/30), y-(4*y)/20);
  pushMatrix();
  translate(x/9,0);
  quad(x-x/5.5, y-(7*y)/20, x-(7*x/30), y-y/5, x-x/5.5, y,x-(4*x/30), y-(4*y)/20);
  popMatrix();
  
  fill(#AA24AA);
  arc(x-x/5+(x/14),y-(2*y/3),x/7,x/4,PI,PI*2);
  
  fill(#5EF0E7);
  ellipse((x-x/5)+x/14,(y-(2*y/3))+(y/5),x/14,x/8);
}

/**************************** Polygon function  ****************************/

void polygon(float x, float y, float r, float s, float o,float colour) {
  fill(colour,100,200);
  beginShape();
  for(int i = 0; i < s; i ++) {
    float xp = x + cos(o + TWO_PI / s * i) * r;
    float yp = y + sin(o + TWO_PI / s * i) * r;
    vertex(xp, yp);
  }
  endShape(CLOSE);
}

/**************************** Alien function  ****************************/
void drawAlien (float face_x, float face_y, float face_size,int colour){
stroke(0);
//Eyeball
float eyeball_x = face_x;
float eyeball_y = face_y - (face_size*0.20);
float eyeball_size = 0.45*face_size;
//bigPupil
float bigPupil_x = face_x;
float bigPupil_y = face_y - (face_size*0.20);
float bigPupil_size = 0.23*face_size;
//smallPupil
float smallPupil_x = face_x;
float smallPupil_y = face_y - (face_size*0.20);
float smallPupil_size = 0.15*face_size;
//Smile
float smile_x = face_x;
float smile_y = face_y + (face_size*0.15);
float smile_size = 0.4*face_size;
float smile_angle1 = 0;
float smile_angle2 = PI;

//face
strokeWeight(face_size/100);
fill(colour,100,200);
ellipse(face_x, face_y, face_size,face_size);
//eyeball
fill(255);
strokeWeight(face_size/100);
ellipse(eyeball_x, eyeball_y, eyeball_size, eyeball_size);
//bigpupil
fill(95,180,242);
strokeWeight(face_size/100);
ellipse(bigPupil_x, bigPupil_y, bigPupil_size, bigPupil_size);
//smallpupil 
fill(0);
strokeWeight(face_size/100);
ellipse(smallPupil_x, smallPupil_y, smallPupil_size, smallPupil_size);
//smile
noFill();
strokeWeight(face_size/50);
arc(smile_x, smile_y, smile_size, smile_size, smile_angle1, smile_angle2);
}


  
  
