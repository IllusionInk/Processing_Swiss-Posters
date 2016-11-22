# Swiss Posters

> 'Swiss Posters in Code' is an experiment to render swiss typography posters with the aid of code. This series is aimed at emulating posters and patterns from the Swiss Typography Era (International Typographic Style) of the 50s. The International Typographic Style emerged in Switzerland and Germany. 

>    It focusses mainly on using a mathematical grid as the basis for its design, followed with an asymmetrical layout (in most cases) and heavy use of sans serif typeface for their clean, structured look. 
   Akzidensk Hans Grotesk , the primary typeface used widely during this era; was revised to form Neue Hans Grotesk, more commonly known as 'Helvetica'.

### Method
---
#### #1 Drehen
The process is quite basic and I have outlined it below (the code is commented as well to depict the structure):
 - Illustrate a grid of squares with a nested for loop.
 - While generating each  square, translate the origin of the grid to the center of the square (we are plotting the square in center mode).
 - A flag (counter) is defined that helps us to rotate each square with a multiple of 36 degreees (36, 72, 108 and so on).
 - The color is intended to change at with each iteration of the nested for loop. The R,G,B values are preset with certain values and are incremented/decremented at different rates to paint the artwork with the depicted gradient.
 - The text is positioned in the same way as the squares, by offsetting the origin to the desired location.
 - Being Swiss typography posters, I chose the font 'Helvetica' for rendering my series title, and subtext here (basic font operations used here can be looked up in processing help.)
 - Key Pressed function is used to save the frame as an artwork when finally done.

### Final Renders
---
#### #1 Drehen
![Drehen](https://github.com/IllusionInk/Processing_Swiss-Posters/blob/master/Art%20Renders/Drehen_art.jpg)


### Tools Used
---

 - #### Processing
 
   Processing is a java based environment for coding in the context of visual arts.  
   You can download the tool [here](https://processing.org/download/).
   

### Reference
---
 - [Processing Help Reference](https://processing.org/reference).
   I looked up the reference to understand some of the used concepts like push, pop for interacting with the co-ordinate system, font classes and functions etc.

 - #### Video Compilation
 
   A [tutorial video](https://www.youtube.com/watch?v=G2hI9XL6oyk) I referred, in order to generate a video from a set of images in processing, by the very helpful [**Daniel Shiffman**](https://www.youtube.com/channel/UCvjgXvBlbQiydffZU7m1_aw) (*check out his channel for some insane Processing content*)















