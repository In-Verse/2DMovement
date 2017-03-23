# 2DMovement
From Linear Algebra 2016

**Movement is awesome!**

Games represent movement through coordinate systems. A standard form is through the Cartesian plane.

This is code looking at the game Asteroid and it's 2D movement through looking at the linear transformations involved in moving the cursor across the screen - this happens through translation, rotation, and scaling. Each of these results in a transformation matrix.

Fun questions from the project:
* What places in the matrix hold position, orientation, and size of the coordinates?
* How do we define transformation between one point (x,y) to a new location (x’,y’)? Can we make multiple transformations in just one matrix operation?
* How do different polygons transform (when the # of vertices change, what happens to the matrix)?
* What do we need to do to go from 2D transformations to 3D transformations?
* How do concepts like linear independence,change of basis, linear transformations, homogenous solution, symmetry, and eigenvalues apply to the transformations?

References:
* [Computer Graphics and Linear Algebra (presentation)](https://math.dartmouth.edu/archive/m22s07/public_html/VectorSlides.pdf)
* [Linear Algebra for Game Developers (blog post)](http://blog.wolfire.com/2009/07/linear-algebra-for-game-developers-part-1/) 
* [Linear Algebra and Retro Gaming](http://web.csulb.edu/~jchang9/m247/m247_sp12_Daniel_Kris_James_Walter.pdf)
* [Linear Algebra Applications: Computer Graphics](chrome-extension://bpmcpldpdmajfigpchkicefoigmkfalc/views/app.html)
* [Coding The Matrix: Linear Algebra Through Computer Science Applications](http://codingthematrix.com/)
* [Making Matricies in Python](http://docs.scipy.org/doc/numpy/reference/generated/numpy.matrix.html)
