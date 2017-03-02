# Beethoven

> The second artwork in the series is a take on the [Beethoven Poster](https://in.pinterest.com/pin/560838959818952056/) by  Muller-Brockmann. The poster was made as a part of the Musica Viva series for Zurich Tonhalle. 

### Method
---
 - The illustration consists of several co-centric arcs which have parameters like    Start angle, end angle , radius and stroke-width. All of these variables are set with an initial value to feed into the loop.
 - The arcs are generated with increasing radii (incremented with the loop counter and a constant) via consecutive iterations of a 'for loop'.
- The center of these arcs is shifted using the translate fucntion and the start angle is multiplied by the loop counter allowing to increment it by a fixed amount in each iteration (60,120 etc.)
 - Arc rotation is controlled by the loop counter and the rotation speed varies inversely with the radii of the arcs. This is intended to emulate the fluid behaviour in viscous materials.
 - Strokeweight is altered similarly with the loop counter, in addition to being offset by an initial value.
 - The constant values in all the operations above are determined in order to achieve the resemblance to the look and motion of the posters
 - Text is positioned in the same manner as above, using the pushMatrix and popMatrix functions.
 - A string function is finally used for the subtext (basic font operations used here can be looked up in processing help.)
 
### Art Renders
---
##### Image
![Beethoven](https://github.com/IllusionInk/Processing_Swiss-Posters/blob/master/Art%20Renders/Drehen_art.jpg)

##### Video
![Beethoven Motion Poster](https://vimeo.com/206444985)


### Reference
---
 - [Processing Help Reference](https://processing.org/reference).
   I looked up the reference to understand some of the used concepts like push, pop for interacting with the co-ordinate system, font classes and functions etc.

 - ##### Video Compilation
   A [tutorial video](https://www.youtube.com/watch?v=G2hI9XL6oyk) I referred, in order to generate a video from a set of images in processing, by the very helpful [**Daniel Shiffman**](https://www.youtube.com/channel/UCvjgXvBlbQiydffZU7m1_aw) (*check out his channel for some insane Processing content*)















