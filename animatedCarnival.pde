/******************************************************
 * Assignment 3
 * Name:    Ilisha Ramachandran
 * E-mail:  iramachand@brynmawr.edu
 * Course:      CS 110 
 * Submitted:  28th September 2015  
 * 
 * Design an animated sketch with the following elements: 
       - Reflection upon collision
       - Wraparound upon leaving the screen
       - Multiple items positioned relative to a (moving) reference point. 
       
 *
********************************************************/

/********** Setting up the reference points *************/ 

class ReferencePoint {
  float x; // the xPosition
  float y; // the yPosition
  float deltaX; // the amount to move in the x direction
  float deltaY; // the amount to move in the y direction
  float width;
  float height;
}

 ReferencePoint centerRef;
 ReferencePoint leftRef;
 ReferencePoint rightRef;

/************ Setting up the whole drawing ***************/

void setup() {
  size(500,500,P3D);
  stroke(0);
  smooth();
  noFill();
  ellipseMode(CENTER);
  
  centerRef = new ReferencePoint();
  centerRef.x = width/2;
  centerRef.y = height/2 + 220;
  centerRef.deltaX = 1.5;
  centerRef.deltaY = 0;
  centerRef.width = 20;
  centerRef.height = 20;
 
  rightRef = new ReferencePoint();
  rightRef.x = width/2 + 220;
  rightRef.y = height/2 + 220;
  rightRef.deltaX = 1.5;
  rightRef.deltaY = 0.3;
  rightRef.width = 50;
  rightRef.height = 60;
 
  leftRef = new ReferencePoint();
  leftRef.x = width/2 - 220;
  leftRef.y = height/2 + 220;
  leftRef.deltaX = 0;
  leftRef.deltaY = 0.3;
  leftRef.width = 50;
  leftRef.height = 60; 
}

//needed for rotation later 
float z;

void draw() {
  background(174,227,222);
  
  
/**************************** Draws signature ****************************/

text("Ilisha", 450, 480);

/**************************** Draws clouds ****************************/

drawSun(350, 60, 100);
/************** Drawing the two balloons ****************************/ 
   
 drawBalloon(rightRef.x, rightRef.y, rightRef.width, rightRef.height);
 drawBalloon(leftRef.x, leftRef.y, leftRef.width, leftRef.height);
   rightRef.y -= 2;
   leftRef.y -= 2;
  
/**************************** Draws bouncing alien ****************************/

drawAlien(centerRef.x, centerRef.y, centerRef.width*2);

/**** setting collision parameters for alien ****/
    if(centerRef.x > width ||
      centerRef.x < 0) {
      centerRef.deltaX *= -1.0; 
    }
    
    if(centerRef.y > height ||
      centerRef.y < 0) {
      centerRef.deltaY *= -1.0; 
    }
   // collideCenterRight();
     collidePoints(centerRef,rightRef);
     collidePoints(leftRef,centerRef);
     centerRef.x += centerRef.deltaX;
     centerRef.y += centerRef.deltaY;

/***** Wraparound for balloons *****/

   if(rightRef.y < -120){
    rightRef.y = 600;
    }
    
    if(leftRef.y < -120){
    leftRef.y = 600;
    }

/***** Draws Ferris Wheel  *****/

    translate(width/2, height/2); //Makes the center the origin 
    stroke(0);
    fill(0);
    textSize(18);
    text("Free ride for aliens!", -85,175);
    noFill();
    triangle(0, 0, 100,180,-100,180);
    rotate(z);
    
    drawWheel(0, -30, 30);
    z = z - (PI/300);
}

/**************************** Sets up collision points ****************************/
void collidePoints(ReferencePoint one, ReferencePoint two) {
  
  if (one.x > two.x + two.width ||
      one.x + one.width < two.x) {
      //no collision
      } else {
        one.deltaX *= -1.0;
        two.deltaX *= -1.0;
      }
}

void collideCenterRight() {
   if (centerRef.x > rightRef.x + rightRef.width ||
       centerRef.x + centerRef.width < rightRef.x) {
        // no collision. 
       } else {
         centerRef.deltaX *= -1.0;
         rightRef.deltaX *= -1.0;
       }  
}

/**************************** Alien function  ****************************/
void drawAlien (float face_x, float face_y, float face_size){
 
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
fill(random(100,255),random(100,255),random(100,255),random(200,255));
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

/**************************** Balloon function ****************************/

void drawBalloon(float x, float y, float w, float h){
 
  //balloon
  strokeWeight(0.5);
  noStroke();
  fill(164,24,196,120);
  ellipse(x, y ,w , h);
  triangle(x, y + h/2, x + 5, y + h/2 + 5, x - 5, y + h/2 + 5);
  stroke(0);
  strokeWeight(1.2);
  line(x ,y + h*1.8 , x , y + h/2 + 5);
 
}

/**************************** FerrisWheel function ****************************/

void drawWheel(float center_x, float center_y, float center_size){
  
  float secondCircle_x = center_x;
  float secondCircle_y = center_y;
  float secondCircle_size = center_size*5;
  
  float thirdCircle_x = center_x;
  float thirdCircle_y = center_y;
  float thirdCircle_size = center_size*6;
  
  float fourthCircle_x = center_x;
  float fourthCircle_y = center_y;
  float fourthCircle_size = center_size * 2;
  
  
  for (int i = 0; i <100; i++){
 //so I only need to build one spoke, and it rotates the whole thing around the Z axis. 
    rotateZ(PI/10);
    
 //Ferris wheel inside parts 
    stroke(50,150);
    strokeWeight(2);
    line(center_x, center_y, center_x, center_y + center_size * 3);
    line(center_x + center_size *2, center_y, center_x + center_size*1.2, center_y - center_size*0.4);
    line(center_x + center_size *2, center_y, center_x + center_size*1.2, center_y + center_size*0.4);
    
  //Ferris Wheel building blocks 
  noFill();
  ellipse(center_x, center_y, center_size,center_size);
  ellipse(secondCircle_x, secondCircle_y, secondCircle_size, secondCircle_size);
  ellipse(thirdCircle_x, thirdCircle_y, thirdCircle_size, thirdCircle_size);
  ellipse(fourthCircle_x, fourthCircle_y, fourthCircle_size, fourthCircle_size);
  
  //Ferris wheel lights 
  noStroke();
  fill(random(0,255),random(0,255),random(0,255));
  ellipse(center_x + center_size *2, center_y, center_size * 0.5, center_size * 0.5);
  ellipse(center_x + center_size*1.2, center_y - center_size*0.5, center_size * 0.5, center_size * 0.3);
  
}

   //Carriages

  for (int j = 0; j<20; j++) { 
    //rotates same speed as the wheel 
    rotateZ(PI/10);  
    //where it rotates from. If I increase from 120, the radius of the circle is larger 
    translate(0, 120, 0);           
    
    //rotates opposite direction of the ferris wheel  
    rotate(-z);                     
    pushMatrix(); 
    //rotates around the Z axis so each carriage doesn't keep rotating around 360 degrees
    //the 18 comes from dividing 360 by the number of carriages 
    rotateZ(radians(-18*j));        
    rotateZ(radians(-18)); 
    
    //draws the carriages 
    fill(38,198,186);              
    triangle(0, 0, 10, 20, -10, 20);  
    fill(33,129,99);               
    rect(-5, 10, 10, 10);    
    fill(38,119,198);
    arc(0,20,20,20,0,PI);
    popMatrix(); 
    //now rotates in the same direction as the ferris wheel 
    rotate(z);                     
    //translates it back to the correct place
    translate(0, -120, 0);          
  }
}


/**************************** Sun function ****************************/

void drawSun(float sun_x, float sun_y, float sun_s)
  {
    noStroke();
    fill(238,242,51,150);
    ellipse(sun_x, sun_y, sun_s, sun_s);
  }
