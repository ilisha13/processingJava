/*****************************************
 * Assignment 1
 * Name:    Ilisha Ramachandran
 * E-mail:  iramachand@brynmawr.edu
 * Course:      CS 110 
 * Submitted:    
 * 
 * Design and create your own sketch using Processing. 
 *
***********************************************/


size(900,330);
background(0);
smooth();
noStroke();
noFill();



/************************** Right side of face ************************************/


/******* Down the center line (450,0) to (450,330) *******/

//Beige right-angled triangle 
fill(250,215,159);
triangle(450,0,360,0,360,45);
//Orange almost equilateral triangle 
fill(247,189,95);
triangle(450,0,390,30,450,60);
//yellow triangle under orange equilateral 
fill(250,223,149);
triangle(390,30,360,90,450,60);
//darker orange small triangle to the left of yellow triangle 
fill(240,168,102);
triangle(360,45,390,30,360,90);
//larger stretched downwards orange triangle 
fill(245,144,62);
triangle(450,60,405,90,420,195);
//pink-ish thin triangle under yellow 
fill(245,138,99);
triangle(450,60,360,90,405,90);
//long stretched right-angled triangle light orangy beige, pretty much in the center 
fill(242,171,78);
triangle(450,60,420,195,450,195);
//dark brown small right-angled triangle under long light orangy beige
fill(88,53,10);
triangle(450,195,420,195,420,240);
//still along the center, makes up half of the light brown diamond 
fill(201,145,77);
triangle(450,195,420,240,450,270);
//dark orangey-red right-angled triangle center bottom  
fill(149,61,29);
triangle(450,270,390,330,450,330);
//light orange triangle on the hypothenus of the dark orangy-red right-angled triangle
fill(250,113,63);
triangle(420,240,390,330,450,270);
//light yellow overlapping dark orangey-red at the bottom
fill(237,226,96,100);
triangle(450,330,420,240,450,270);
//quite big light orange touching the black polygon frown line 
fill(250,113,63);
triangle(405,90,345,165,420,195);
//darkish orangy-red under the previous big light orange triangle
fill(147,46,9);
triangle(315,195,345,165,420,195);
//light brown triangle base against dark brown right-angled 
fill(201,136,51);
triangle(315,195,420,240,420,195);
//muddy brown against edge of light brown 
//fill(147,98,33);
triangle(315,195,360,215,420,195);
//grey-beige triangle against top beige right-agnled triangle
fill(224,189,143);
triangle(360,0,315,30,360,45);
//yellow against grey-beige
fill(234,196,111);
triangle(315,90,315,30,360,45);
//brown against yellow 
fill(198,124,74);
triangle(315,90,360,90,360,45);
//greenish base against top line 
fill(198,162,82);
triangle(300,0,360,0,315,30);
//light pink translucent against greenish 
fill(234,178,140);
triangle(405,90,360,90,375,125);
//rest of the light pink triangle 
triangle(300,0,285,60,315,30);
//orange under light pink
fill(232,157,82);
triangle(315,90,285,60,315,30);
//dark grey base against top, next to light pink 
fill(203,201,199,150);
triangle(300,0,300,30,240,0);
//lighter grey under dark grey 
fill(229,227,225,150);
triangle(240,0,240,45,300,30);

//white, black, and grey triangles above eye 
fill(255,254,252,10);
triangle(315,90,240,45,300,30);
fill(0,0,0);
triangle(240,0,210,0,240,30);
fill(237,233,230);
triangle(210,0,210,45,240,30);
fill(0,0,0);
triangle(180,0,210,0,210,45);
fill(152,74,29);
triangle(360,90,375,125,345,120);
fill(185,127,51);
triangle(360,90,345,120,315,90);
fill(131,87,28);
triangle(285,60,300,95,315,90);

//black polygon making "frown lines" 
fill(0,0,0);
beginShape();
vertex(315,90);
vertex(300,95);
vertex(325,125);
vertex(375,125);
vertex(340,115);
endShape();

//filling in around the tear duct of eye 
fill(155,115,62);
triangle(375,125,325,125,345,165);
fill(255,255,255,0);
triangle(150,0,180,0,210,45);
fill(219,152,64);
triangle(315,155,325,125,345,165);
fill(216,180,131);
triangle(315,155,315,195,345,165);

//dark brown touching corner of black polygon 
fill(108,68,14);
triangle(300,95,325,125,315,155);
//reddish brown corner touching black polygon (a)
fill(209,104,55);
triangle(300,95,285,105,315,155);
//grey stretched triangle corner touching black polygon 
fill(227,225,224);
triangle(300,95,240,45,285,105);
//dark dark brown triangle, corner touching (a)   (b)
fill(85,49,19);
triangle(285,105,285,135,315,155);

//black stretched triangle corner touching (b) *black stretched*
fill(0,0,0);
triangle(240,135,285,135,315,155);
//orange triangle corner touching (a) *(orange)*
fill(240,176,36);
triangle(315,155,240,195,315,195);
//greenish brown triangle lying against hypothenos of (orange) **greenish brown**
fill(173,138,63);
triangle(240,195,265,155,300,162);
//dark dark brown triangle on the other side of *black stretched* 
fill(72,55,17);
triangle(315,155,300,162,265,155);
//black triangle that makes the black rhombus 
fill(0,0,0);
triangle(315,155,240,135,265,155);
//brown triangle next to (greenish brown) *brown*
fill(100,59,14);
triangle(265,155,240,195,210,180);
//lighter brown triangle next to (brown)
fill(152,90,23);
triangle(265,155,210,180,240,135);
//light orange triangle under eye 
fill(237,157,72);
triangle(210,180,240,135,165,135);
//black under eye left side
fill(0,0,0);
triangle(195,135,165,135,135,90);
//black under eye right side 
fill(0,0,0);
triangle(195,135,285,135,285,105);
//white triangle above eye 
fill(255,255,255);
triangle(220,80,240,45,285,105);

//*******EYES*******//

//yellow eye
fill(255,219,139,250);
beginShape();
vertex(195,135);
vertex(176,120);
vertex(199,108);
vertex(210,120);
vertex(195,135);
endShape();

//brown eye
fill(165,122,28);
triangle(210,120,195,135,227,128);
//to the right of brown eye
fill(188,159,101,150);
triangle(210,120,227,128,245,120);
//to the left and above yellow eye 
fill(70,37,20);
triangle(176,120,174,95,165,111);
//orange eye triangle 
fill(229,114,56,150);
triangle(176,120,174,95,190,112);
//brown green eye triangle
fill(155,150,60,100);
triangle(170,100,210,120,214,105);

//green eye
fill(215,229,134,150);
beginShape();
vertex(210,120);
vertex(214,105);
vertex(227,111);
vertex(227,120);
vertex(210,120);
endShape();

//small black eye triangle to the right of green 
fill(0,0,0);
triangle(227,120,227,111,245,120);
//small black eye trianlge above green 
fill(0,0,0);
triangle(214,105,227,111,229,104);
//small triangle between black ones
fill(82,75,65);
triangle(245,120,227,111,229,104);
//white eye 
fill(255,255,255);
beginShape();
vertex(214,105);
vertex(229,104);
vertex(228,97);
vertex(218,93);
vertex(211,100);
vertex(214,105);
endShape();
//black polygon eye 
fill(0,0,0,200);
beginShape();
vertex(174,94);
vertex(180,100);
vertex(195,102);
vertex(190,95);
endShape();
//fill around eye 
fill(0,0,0);
beginShape();
vertex(245,120);
vertex(229,104);
vertex(228,97);
vertex(218,93);
vertex(220,80);
vertex(285,105);
endShape();

//polygon next to white eye 
fill(82,75,65);
beginShape();
vertex(214,105);
vertex(211,100);
vertex(218,93);
vertex(190,95);
vertex(195,103);
endShape();

//fill rest of around the eye
fill(0,0,0);
beginShape();
vertex(218,93);
vertex(220,80);
vertex(170,72);
vertex(150,76);
vertex(105,76);
vertex(120,90);
vertex(135,90);
vertex(165,111);
vertex(174,95);
vertex(190,95);
endShape();

//white triangle above eye 
fill(206,204,196);
triangle(220,80,240,45,210,45);
//all greys around the point above the eye. grey triangle wheel 
fill(232,231,227);
triangle(210,45,220,80,200,76);
fill(250,242,235);
triangle(210,45,200,76,150,76);
fill(214,208,203);
triangle(210,45,150,76,170,30);
fill(216,214,212,100);
triangle(210,45,170,30,150,0);

//black to the left next to the grey triangle wheel 
fill(0,0,0);
beginShape();
vertex(150,0);
vertex(170,30);
vertex(130,30);
vertex(90,0);
endShape();

//triangle under above black polygon 
fill(232,231,299,100);
triangle(170,30,130,30,150,76);

//lighter triangle above left most black eye part 
fill(255,254,252,100);
triangle(130,30,150,76,86,45);

fill(214,212,209);
triangle(86,45,130,30,70,0);

fill(118,116,113);
triangle(130,30,70,0,90,0);
//darker triangle above left most part of eye (black) 
fill(118,116,113);
triangle(150,76,86,45,100,69);
//dark brown triangle left
fill(95,54,13);
triangle(70,0,30,5,45,20);
//lighter brown triangle under darker brown triangle 
fill(219,192,133);
triangle(70,0,86,45,45,20);

//black polygon left 
fill(0,0,0);
beginShape();
vertex(30,5);
vertex(15,35);
vertex(45,76);
vertex(100,69);
vertex(86,45);
endShape();

//dark brown triangle left most 
fill(129,89,46);
triangle(30,5,15,35,15,5);

//beigh triangle left most 
fill(216,200,181);
triangle(15,5,0,34,15,34);
//more beigh triangle under 
fill(224,183,138);
triangle(0,34,15,34,0,76);
//brown triangle next to beigh 
fill(211,146,77);
triangle(15,34,45,76,7,60);
//skin coloured beigh triangle
fill(255,215,173);
triangle(7,60,45,76,10,80);
//tiny triangle left 
fill(245,171,91);
triangle(7,60,10,80,0,80);
//black triangle 
fill(0,0,0);
triangle(45,76,10,80,40,110);

//triangles left of black triangle

//light brown 
fill(234,169,99);
triangle(10,80,40,110,10,105);
//darker brown 
fill(160,115,66);
triangle(40,110,10,105,12,140);
//beige
fill(247,214,177);
triangle(12,140,10,105,0,140);
//yellow
fill(216,189,118);
triangle(0,140,10,105,0,80);
//darker yellow
fill(203,169,80);
triangle(10,105,0,80,10,80);

//black polygon 

fill(0,0,0);
beginShape();
vertex(40,110);
vertex(12,140);
vertex(0,140);
vertex(80,195);
vertex(70,140);
endShape();

//big white triangle
fill(255,255,255);
triangle(0,140,0,250,120,200);

//black polygon lowest 
fill(0,0,0);
beginShape();
vertex(80,180);
vertex(120,200);
vertex(150,160);
vertex(120,140);
vertex(110,170);
endShape();

//dark grey in between two black polygons 
fill(116,107,84);
triangle(110,170,78,180,70,140);
//greyish green between two black polygons
fill(82,71,41);
triangle(110,170,70,140,120,140);
//light grey green under black filled eye 
fill(165,148,103);
triangle(120,90,135,90,165,135);
//dark red in corner of eye 
fill(126,46,9);
triangle(120,90,100,70,95,110);
//orange 
fill(216,121,48);
triangle(95,110,45,76,100,69);
//brownish orange
fill(185,127,82);
triangle(45,76,95,110,40,110);
//redish yellow
fill(216,163,28);
triangle(95,110,40,110,70,140);
//yellowish 
fill(237,195,86);
triangle(70,140,95,110,120,140);
//white
fill(255,255,255);
triangle(120,90,95,110,120,140);
//grey
fill(198,194,184);
triangle(120,90,120,140,165,135);
//beige
fill(242,195,125);
triangle(120,140,165,135,150,160);
//brown triangle next to orange triangle under eye
fill(137,98,39);
triangle(210,180,165,135,120,200);
//black stretched under eye
fill(0,0,0);
triangle(210,180,120,200,165,200);
//light yellow triangle next to black stretched
fill(245,233,175);
triangle(210,180,165,200,243,198);

//triangles under big white 

//greyish blue triangle under big white
fill(208,224,223,150);
triangle(40,300,0,250,120,200);

//black in corner
fill(0,0,0);
triangle(0,250,0,330,40,300);

//dark grey in corner
fill(80,78,76);
triangle(40,300,0,330,40,330);

//light grey triangle
fill(206,205,204,150);
triangle(40,300,40,330,120,275);

//light blue ish white 
fill(237,250,249);
triangle(40,300,120,275,120,200);

//almost white
fill(247,250,250);
triangle(120,200,120,275,170,240);

//black triangle bottom
fill(0,0,0);
triangle(40,330,120,275,80,330);

//bottom off white
fill(242,241,220);
triangle(120,275,80,330,150,330);

//bottom white 
fill(255,255,255);
triangle(150,330,120,275,200,270);

//bottom yellowish grey 
fill(183,182,164,150);
triangle(150,330,200,270,230,330);

//bottom thin black triangle
fill(0,0,0);
triangle(230,330,200,270,250,330);

//bottom orangy
fill(234,171,111);
triangle(200,270,250,330,280,280);

//bottom darker orangy 
fill(203,140,80);
triangle(250,330,280,280,310,330);

//bottom orange sharp 
fill(234,140,52);
triangle(310,330,340,330,365,270);

//bottom small thin brown
fill(100,73,39);
triangle(310,330,280,280,322,315);

//bottom green
fill(185,188,93,150);
triangle(280,280,365,270,322,315);

//bottom stretched brown 
fill(175,108,25);
triangle(365,270,340,330,420,240);

//bottom greenish large
fill(193,151,66);
triangle(420,240,340,330,390,330);


//greyish brown, corner of center diamond
fill(144,99,71);
triangle(420,240,365,270,360,215);

//dark side of nose two triangles
fill(0,0,0);
triangle(312,195,360,215,350,215);
fill(59,29,9);
triangle(360,215,350,215,365,270);

//oranges near black nose 
fill(242,168,20,200);
triangle(350,215,280,280,365,270);

//beige near black nose 
fill(201,156,126);
triangle(312,195,350,215,280,280);

//greenish near black nose 
fill(188,180,101);
triangle(312,195,280,280,260,240);

//beige near around circle near black nose 
fill(232,212,197);
triangle(260,240,280,280,200,270);

//big light orange/yellow triangle
fill(227,187,126);
triangle(260,240,312,195,120,200);

//The rest of the small triangles underneath big orange one 

fill(242,220,186);
triangle(200,270,260,240,180,218);

fill(201,201,201);
triangle(170,240,120,275,200,270);

fill(211,153,64);
triangle(180,218,200,270,120,200);

/************************** Right side of face ************************************

From this point, the y-coordinates are the same. To find the x-coordinates, 
I used the following equation: 

x = x coordinates for left side of face
r = x coordinates for right side of face 

r = (450-x)+450
r = 900-x 

I just replaced all the x values for r, and this gave the right side of the face.
There aren't comments on all of them, but there are on the left side shapes so 
you can just refer to those. They are mirror image. 

***********************************************************************************/

//Down the center of the face 

fill(250,215,159);
triangle(450,0,540,0,540,45);
fill(247,189,95);
triangle(450,0,510,30,450,60);
fill(250,223,149);
triangle(450,60,510,30,540,90);
fill(240,168,102);
triangle(540,45,510,30,540,90);
fill(245,144,62);
triangle(450,60,495,90,480,195);
fill(245,138,99);
triangle(450,60,495,90,540,90);
fill(242,171,78);
triangle(450,60,480,195,450,195);
fill(88,53,10);
triangle(450,195,480,195,480,240);
fill(201,145,77);
triangle(450,195,480,240,450,270);
triangle(450,270,480,240,450,330);
fill(149,61,29);
triangle(450,270,510,330,450,330);
fill(250,113,63);
triangle(480,240,510,330,450,270);
fill(250,113,63);
triangle(495,90,555,165,480,195);
fill(147,46,9);
triangle(585,195,555,165,480,195);
//light yellow overlapping dark orangey-red at the bottom
fill(237,226,96,100);
triangle(450,330,480,240,450,270);
fill(201,136,51);
triangle(585,195,480,240,480,195);
fill(147,98,33);
triangle(585,195,540,215,480,195);
fill(224,189,143);
triangle(540,0,585,30,540,45);
fill(234,196,111);
triangle(585,90,585,30,540,45);
fill(198,124,74);
triangle(585,90,540,90,540,45);
fill(198,162,82);
triangle(600,0,540,0,585,30);
fill(234,178,140);
triangle(495,90,540,90,525,125);
triangle(600,0,615,60,585,30);
fill(232,157,82);
triangle(585,90,615,60,585,30);
fill(203,201,199,150);
triangle(600,0,600,30,660,0);
fill(229,227,225,150);
triangle(660,0,660,45,600,30);
fill(255,254,252,10);
triangle(585,90,660,45,600,30);
fill(0,0,0);
triangle(660,0,690,0,660,30);
fill(237,233,230);
triangle(690,0,660,30,690,45);
fill(0,0,0);
triangle(720,0,690,0,690,45);
fill(152,74,29);
triangle(540,90,525,125,555,120);
fill(185,127,51);
triangle(540,90,555,120,585,90);
fill(131,87,28);
triangle(615,60,600,95,585,90);

//black polygon making "frown lines" 

fill(0,0,0);
beginShape();
vertex(585,90);
vertex(600,95);
vertex(575,125);
vertex(525,125);
vertex(560,115);
endShape();

fill(155,115,62);
triangle(525,125,575,125,555,165);
fill(255,255,255,0);
triangle(750,0,720,0,690,45);
fill(219,152,64);
triangle(585,155,575,125,555,165);

fill(216,180,131);
triangle(585,155,585,195,555,165);
//dark brown touching corner of black polygon 
fill(108,68,14);
triangle(600,95,575,125,585,155);
//reddish brown corner touching black polygon (a)
fill(209,104,55);
triangle(600,95,615,105,585,155);
//grey stretched triangle corner touching black polygon 
fill(227,225,224);
triangle(600,95,660,45,615,105);
//dark dark brown triangle, corner touching (a) (b)
fill(85,49,19);
triangle(615,105,615,135,585,155);
//black triangle corner touching (b) 
fill(0,0,0);
triangle(660,135,615,135,585,155);
//orange triangle corner touching (a) *orange*
fill(240,176,36);
triangle(585,155,660,195,585,195);
//greenish brown triangle lying against hypothenos of (orange) 
fill(173,138,63);
triangle(660,195,635,155,600,162);
//dark dark brown triangle on the other side of *black stretched* 
fill(72,55,17);
triangle(585,155,600,162,635,155);
//black triangle that makes the black rhombus 
fill(0,0,0);
triangle(585,155,660,135,635,155);
//brown triangle next to (greenish brown)
fill(100,59,14);
triangle(635,155,660,195,690,180);
//lighter brown triangle next to (brown)
fill(152,90,23);
triangle(635,155,690,180,660,135);
//light orange triangle under eye 
fill(237,157,72);
triangle(690,180,660,135,735,135);
//black under eye left side
fill(0,0,0);
triangle(705,135,735,135,765,90);
//black under eye right side 
fill(0,0,0);
triangle(705,135,615,135,615,105);
//white triangle above eye 
fill(255,255,255);
triangle(680,80,660,45,615,105);

//*******EYES*******//

//yellow eye
fill(255,219,139,250);
beginShape();
vertex(705,135);
vertex(724,120);
vertex(701,108);
vertex(690,120);
vertex(705,135);
endShape();

//brown eye
fill(165,122,28);
triangle(690,120,705,135,673,128);
//to the right of brown eye
fill(188,159,101,150);
triangle(690,120,673,128,655,120);
//to the left and above yellow eye 
fill(70,37,20);
triangle(724,120,726,95,735,111);
//orange eye triangle 
fill(229,114,56,150);
triangle(724,120,726,95,710,112);
//brown green eye triangle
fill(155,150,60,100);
triangle(730,100,690,120,686,105);

//green eye
fill(215,229,134,150);
beginShape();
vertex(690,120);
vertex(686,105);
vertex(673,111);
vertex(673,120);
vertex(690,120);
endShape();

//small black eye triangle to the right of green 
fill(0,0,0);
triangle(673,120,673,111,655,120);
//small black eye trianlge above green 
fill(0,0,0);
triangle(686,105,673,111,671,104);
//small triangle between black ones
fill(82,75,65);
triangle(655,120,673,111,671,104);
//white eye 
fill(255,255,255);
beginShape();
vertex(686,105);
vertex(671,104);
vertex(672,97);
vertex(682,93);
vertex(689,100);
vertex(686,105);
endShape();
//black polygon eye 
fill(0,0,0,200);
beginShape();
vertex(726,94);
vertex(720,100);
vertex(705,102);
vertex(710,95);
endShape();
//fill around eye 
fill(0,0,0);
beginShape();
vertex(655,120);
vertex(671,104);
vertex(672,97);
vertex(682,93);
vertex(680,80);
vertex(615,105);
endShape();

//polygon next to white eye 
fill(82,75,65);
beginShape();
vertex(686,105);
vertex(689,100);
vertex(682,93);
vertex(710,95);
vertex(705,103);
endShape();

//fill rest of around the eye
fill(0,0,0);
beginShape();
vertex(682,93);
vertex(680,80);
vertex(730,72);
vertex(750,76);
vertex(795,76);
vertex(780,90);
vertex(765,90);
vertex(735,111);
vertex(726,95);
vertex(710,95);
endShape();


//white triangle above eye 
fill(206,204,196);
triangle(680,80,660,45,690,45);
//all greys around the point above the eye. grey triangle wheel 
fill(232,231,227);
triangle(690,45,680,80,700,76);
fill(250,242,235);
triangle(690,45,700,76,750,76);
fill(214,208,203);
triangle(690,45,750,76,730,30);
fill(216,214,212,100);
triangle(690,45,730,30,750,0);

//black to the left next to the grey triangle wheel 
fill(0,0,0);
beginShape();
vertex(750,0);
vertex(730,30);
vertex(770,30);
vertex(810,0);
endShape();

//triangle under above black polygon 
fill(232,231,299,100);
triangle(730,30,770,30,750,76);

//lighter triangle above left most black eye part 
fill(255,254,252,100);
triangle(770,30,750,76,814,45);

fill(214,212,209);
triangle(814,45,770,30,830,0);

fill(118,116,113);
triangle(770,30,830,0,810,0);
//darker triangle above left most part of eye (black) 
fill(118,116,113);
triangle(750,76,814,45,800,69);
//dark brown triangle left
fill(95,54,13);
triangle(830,0,870,5,855,20);
//lighter brown triangle under darker brown triangle 
fill(219,192,133);
triangle(830,0,814,45,855,20);

//black polygon left 
fill(0,0,0);
beginShape();
vertex(870,5);
vertex(885,35);
vertex(855,76);
vertex(800,69);
vertex(814,45);
endShape();

//dark brown triangle left most 
fill(129,89,46);
triangle(870,5,885,35,885,5);

//beigh triangle left most 
fill(216,200,181);
triangle(885,5,900,34,885,34);
//more beigh triangle under 
fill(224,183,138);
triangle(900,34,885,34,900,76);
//brown triangle next to beigh 
fill(211,146,77);
triangle(885,34,855,76,893,60);
//skin coloured beigh triangle
fill(255,215,173);
triangle(893,60,855,76,890,80);
//tiny triangle left 
fill(245,171,91);
triangle(893,60,890,80,900,80);
//black triangle 
fill(0,0,0);
triangle(855,76,890,80,860,110);

//triangles left of black triangle

//light brown 
fill(234,169,99);
triangle(890,80,860,110,890,105);
//darker brown 
fill(160,115,66);
triangle(860,110,890,105,888,140);
//beige
fill(247,214,177);
triangle(888,140,890,105,900,140);
//yellow
fill(216,189,118);
triangle(900,140,890,105,900,80);
//darker yellow
fill(203,169,80);
triangle(890,105,900,80,890,80);

//black polygon 

fill(0,0,0);
beginShape();
vertex(860,110);
vertex(888,140);
vertex(900,140);
vertex(820,195);
vertex(830,140);
endShape();

//big white triangle
fill(255,255,255);
triangle(900,140,900,250,780,200);

//black polygon lowest 
fill(0,0,0);
beginShape();
vertex(820,180);
vertex(780,200);
vertex(750,160);
vertex(780,140);
vertex(790,170);
endShape();

//dark grey in between two black polygons 
fill(116,107,84);
triangle(790,170,822,180,830,140);
//greyish green between two black polygons
fill(82,71,41);
triangle(790,170,830,140,780,140);
//light grey green under black filled eye 
fill(165,148,103);
triangle(780,90,765,90,735,135);
//dark red in corner of eye 
fill(126,46,9);
triangle(780,90,800,70,805,110);
//orange 
fill(216,121,48);
triangle(805,110,855,76,800,69);
//brownish orange
fill(185,127,82);
triangle(855,76,805,110,860,110);
//redish yellow
fill(216,163,28);
triangle(805,110,860,110,830,140);
//yellowish 
fill(237,195,86);
triangle(830,140,805,110,780,140);
//white
fill(255,255,255);
triangle(780,90,805,110,780,140);
//grey
fill(198,194,184);
triangle(780,90,780,140,735,135);
//beige
fill(242,195,125);
triangle(780,140,735,135,750,160);

//brown triangle next to orange triangle under eye
fill(137,98,39);
triangle(690,180,735,135,780,200);
//black stretched under eye
fill(0,0,0);
triangle(690,180,780,200,735,200);
//light yellow triangle next to black stretched
fill(245,233,175);
triangle(690,180,735,200,657,198);

//triangles under big white 

//greyish blue triangle under big white
fill(208,224,223,150);
triangle(860,300,900,250,780,200);

//black in corner
fill(0,0,0);
triangle(900,250,900,330,860,300);

//dark grey in corner
fill(80,78,76);
triangle(860,300,900,330,860,330);

//light grey triangle
fill(206,205,204,150);
triangle(860,300,860,330,780,275);

//light blue ish white 
fill(237,250,249);
triangle(860,300,780,275,780,200);

//almost white
fill(247,250,250);
triangle(780,200,780,275,730,240);

//black triangle bottom
fill(0,0,0);
triangle(860,330,780,275,820,330);

//bottom off white
fill(242,241,220);
triangle(780,275,820,330,750,330);

//bottom white 
fill(255,255,255);
triangle(750,330,780,275,700,270);

//bottom yellowish grey 
fill(183,182,164,150);
triangle(750,330,700,270,670,330);

//bottom thin black triangle
fill(0,0,0);
triangle(670,330,700,270,650,330);

//bottom orangy
fill(234,171,111);
triangle(700,270,650,330,620,280);

//bottom darker orangy 
fill(203,140,80);
triangle(650,330,620,280,590,330);

//bottom orange sharp 
fill(234,140,52);
triangle(590,330,560,330,535,270);

//bottom small thin brown
fill(100,73,39);
triangle(590,330,620,280,578,315);

//bottom green
fill(185,188,93,150);
triangle(620,280,535,270,578,315);

//bottom stretched brown 
fill(175,108,25);
triangle(535,270,560,330,480,240);

//bottom greenish large
fill(193,151,66);
triangle(480,240,560,330,510,330);


//greyish brown, corner of center diamond
fill(144,99,71);
triangle(480,240,535,270,540,215);

//dark side of nose two triangles
fill(0,0,0);
triangle(588,195,540,215,550,215);
fill(59,29,9);
triangle(540,215,550,215,535,270);

//oranges near black nose 
fill(242,168,20,200);
triangle(550,215,620,280,535,270);

//beige near black nose 
fill(201,156,126);
triangle(588,195,550,215,620,280);

//greenish near black nose 
fill(188,180,101);
triangle(588,195,620,280,640,240);

//beige near around circle near black nose 
fill(232,212,197);
triangle(640,240,620,280,700,270);

//big light orange/yellow triangle
fill(227,187,126);
triangle(640,240,588,195,780,200);

//rest of the small triangles underneath big orange one 

fill(242,220,186);
triangle(700,270,640,240,720,218);

fill(201,201,201);
triangle(730,240,780,275,700,270);

fill(211,153,64);
triangle(720,218,700,270,780,200);


/**************** Signature **********************/
//All inside big white triangle coordinates(0,140,0,250,120,200);

textSize(8);
fill(0,0,0,150);
text("Ilisha",14,328);

fill(0,0,0,100);
ellipseMode(CENTER);
ellipse(7,327,7,7);
rect(10,321,2,14);
fill(0,0,0);
point(7,327);
