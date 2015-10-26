/******************************************************
 * Assignment 2
 * Name:    Ilisha Ramachandran
 * E-mail:  iramachand@brynmawr.edu
 * Course:      CS 110 
 * Submitted:  28th September 2015  
 * 
 * Design an interactive sketch 
 *
********************************************************/

//inital total number of aliens 
int totalNumber = 1;

//setting each value as an array 
float [] face_x = new float [totalNumber];
float [] face_y = new float [totalNumber];
float [] face_size = new float [totalNumber];

 
void setup(){

size(500,500);
background(0);
frameRate(30); //this is so that the colours cycle more slowly 
stroke(0);
smooth();
noFill();
ellipseMode(CENTER);

/***** signature *******/
//fill(255,255,255,150);
//textSize(20);
//text("Ilisha",width-80,height-10);
   
//for each alien, assign a random position and size 
 for (int i = 0; i<totalNumber; i++){
   face_x[i] = random(0,width);
   face_y[i] = random(0,height);
   face_size[i] = random(30,150);
/***** signature *******/
   fill(255,255,255,150);
   textSize(20);
   text("Ilisha",width-80,height-10);
}
}


void draw(){
  
  //selectedAlien is a temporary variable that will eventually store the value of the alien
  //that the cursor is above 
  int selectedAlien = -20;
  //this basically just draws the first alien 
  for (int i = 0; i<totalNumber; i++){
   drawAlien(face_x[i],face_y[i],face_size[i]);
   
   //when the mouse is between coordinates of the alien, change temp variable to i 
   if ((mouseX > (face_x[i]-(face_size[i]/2)) && mouseX < (face_x[i]+(face_size[i]/2)) && mouseY > (face_y[i]-(face_size[i]/2)) && mouseY < (face_y[i]+(face_size[i]/2)))) {
     selectedAlien = i;
    
   }
 }
 
 //when mouse is pressed when above an existing alien, another alien appears at another random position 
 if (selectedAlien>=0){
   if (mousePressed){
     face_x[selectedAlien] = random(0,width);
     face_y[selectedAlien] = random(0,height);
     face_size[selectedAlien] = random(30,150);   
   } 
   else {
     drawAlien(face_x[selectedAlien],face_y[selectedAlien],face_size[selectedAlien]);
}
 }
}
  

/****************** sets up drawAlien function *************************/
/******************     based on x,y,size      *************************/


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
