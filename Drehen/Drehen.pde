PFont myfont;                  // Font class decalred inline in Processing. Declared this to use as my title font for the artwork.
String s = "A swiss poster experiment in code"; // Subtext for the artwork

// Global variable declaration
int flag = 0;                  // Variable for rotation of squares
float R = 190;                 // Initial color variables
float G = 10;
float B = 190;

void setup(){
size(800,800);
smooth();                      // Used for anti aliasing the image render of your artwork.
noLoop();
}

void draw(){
  swisspattern();
}
 
void swisspattern(){
background(255);
for(int i = 50; i <= width-50; i+= 50){
  for(int j = 50; j <= height-50; j+= 50){
    pushMatrix();              // Saves the current setting of cor-ordinate system onto a stack
    translate(i,j);            // Moves the origin to a different point in each iteration.
    rectMode(CENTER);
     R -= 1;                   // Incrementing-Decrementing R,G,B values in each look iteration to develop the gradient in the artwork
     G += 1;                   // pattern
     B += 1;
    fill(R,G,B);
    //fill(#00d2f2);           // Single Color test case. Made before writing the case for generating gradient.
    noStroke();
    rotate(degrees(flag*36));  // Rotate about center of the square element
    flag = flag + 1;           // Incrementing flag allows to rotate by steps, 36,72,108 etc.
    rect(0,0,20,20);           // Each rectangle is being plotted in the center mode about this new origin in each iteration
    popMatrix();               // Pushes the current setting of the co-ordinate system out of the stack
    }
}
//Text and Font
 pushMatrix();
 fill(60,60,60);
 translate(width - 170, height-80);
 myfont = createFont("Helvetica",32);
 textFont(myfont,42);
 text("Drehen",0,0);
 popMatrix();
 pushMatrix();
 translate (width - 110,height - 40);
 //translate(40, height-30);
 textAlign(RIGHT);
 textSize(14);
 //fill(255,255,255);
 fill(40,40,40);             // Specifying the font size, color , alignment 
 //rectMode(CORNER);
 text(s,0,0,150,50);         // Printing the ubtext at the specified location using the same method as used above to plot the squares.
 popMatrix();
 };

void keyPressed(){
 save("drehen_art.jpg");      // Key Press saves the current frame of the render as an  artwork to the local system storage.
}