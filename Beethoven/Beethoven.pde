PFont myFont;                      // Font class decalred inline in Processing. Declared this to use as my title font for the artwork.
float r = -15;                     // Start angle or arc
float rad = 350;                   // Radius of arc
float sw = 3;                      // Stroke-width of arc
String s = "A swiss poster experiment in code";

void setup(){
  size(500,800);
  smooth();                         // Anti aliasing the renders, thereby smoothening the motion.
  myFont = createFont("Helvetica",24);
  textFont(myFont);
}

void draw(){
  beethoven();
}

void beethoven(){
  background(255);
  for(int i = 1; i <= 10; i+=1){    // Produce the several arcs by different iterations of the for loop.
  pushMatrix();                     // Saves the current setting of the matrix onto a stack
  translate(width/2-150,height/2+50);
  float s1 = radians(r*i);          // Plotting an arc requires specifying its start angle and end angle.
  float e1 = radians(r*i+90);      // Multiplying the start angle const. value 'r' with the loop counter allows
                                    // Increment the angle by a fixed amount in each iteration. It is further incremented by 120 in this case
                                    // to form the arc width.
  float s2 = radians(r*i+180);  
  float e2 = radians(r*i+280);
  float t = i/2 ;                   // Rotation constant varies for the arcs based on their loop counter value.
  rotate(radians(frameCount/t));    // Rotation speed is made to decrease as the arcs spread outwards , giving it a viscous material behaviour.
  noFill();
  strokeWeight(sw + 7*i);           // Strokeweight too is being altered with each iteration by mulptiplying the loop counter, in addition to being
                                     // Off-setted by a predefined constant.
                                    
  stroke(#000000);
  strokeCap(SQUARE);                // Meant to achieve the square end look of the arcs in the original artwork.
  arc(0,0,rad+75*i,rad+75*i,s1,e1); // Arcs being plotted with angle values generated above and the radius being incremented by the same logic
                                    // as angles and strokeweight of the arc.
  arc(0,0,rad+75*i,rad+75*i,s2,e2);
  popMatrix();                      // Pops the current coordinate system settings out of the stack.
  }
 
 //title          
 textSize(28);
 fill(80,80,80);
 pushMatrix();
 translate(width/2-200,height/2);   //Text is positioned with the same logic as above
 text("beethoven",0,0);
 popMatrix();
 //subtitle
 pushMatrix();
 textSize(13);
 fill(120,120,120);
 translate(width/2-200,height/2+20);
 text(s,0,0,120,120);
 popMatrix();
}

void keyPressed(){
 save("beethoven_art.jpg");      // Key Press saves the current frame of the render as an  artwork to the local system storage.
}