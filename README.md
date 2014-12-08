Shading_Correction
==================
The Macro processes a composite picture in ImageJ/Fiji.
To calculate the white balance, a rectangle at coordinates (x=100, y=100) and of size (w=100 pixels, h=100 pixels) is used. These values can be changed to make sure that a background region is taken for the calculation in the line: makeRectangle(100,100,100,100). The user could be prompted to draw the region by removing the signs // in the line: // waitForUser("Please draw a region in the background");
