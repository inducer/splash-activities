# Learning goals

* Build tables of function values (by hand)
* Plot function values (by hand)
* Take differences (in a table, by hand)
* Take slopes (in a table, by hand)
* Computers deliver "scalability" -> can do more interesting things
* Do all of the above on a computer
* Reconstructing a function from differences
    * Given a table of differences *and* an initial value
* Dependency on step size, limits???
    * Activity: Explore points of a function with different step sizes
    * Connecting dots
* Reconstructing a function from slopes
    * Take differences, reconstruct (aka "fundamental theorem of calculus")
* Reconstructing from data that doesn't come from slopes
    * E.g. just take input to reconstruction to be 1, x, x**2, f (aka the function values -> expoential -> tada: differential equations! y'=y)
* Muck around with differential equations/"initial value problems"
* Systems of them (predator-prey/Lotka-Volterra)
* Harmonic Oscillator
* Second differences can be done using systems
* Taking slopes in space *and* time -> waves

## Things that are out of scope

* Connecting dots in a way that's buttery smooth
* Limits aka "what's the correct step size"
* "Actual calculus" aka "Differentiating and Integrating"

# March 7

## Open Questions

* Strength of motivation? Maybe "lovely" is enough
* Sources of "real-world" data for differencing?
* Getting to slopes
* How much code do they need to learn?
    * Three skills
        * Differencing / slopes
        * Summing / integrating
        * Plotting
* How to get from pen/paper to compute
* When to test in front of kids?

## Action Items

* Activity between triangular and differencing:
    * Given part of a quadratic, continue table based on keeping second difference constant
* Change example to be continuous time
* Ping Lenny?
* Complete core computational skills notebook :)

# March 14

## Open Questions

* What intermediate steps do we need on the coding end?
    * Loops
        * Write the repetitive code with values plugged in
        * Write the repetive code with a variable assignment (and have the computer plug in)
        * Ta-da loop
    * Introduce a differencing loop
        * The same way, maybe
    * Data capture
    * What does append do?

## Action Items

* Jana/George: Work towards sequence of activities
    * Capstone: "Differential equations" (aka be flexible in where the increments come from)
* Andreas: look at Turing tumble
* Andreas: cook up a data capture widget


### 3/26/19
Andreas and George agree to have George and Jana work on a 3-day lesson/unit on using python to make lists of points and display them along with their second differences to illustrate the power programming with computers to make all the computational stuff with second differences 

Andreas has dropped the python code for visualizing points at capture-coords.py
Andreas can create a javascript page so that students can do the activies on Chromebooks. 

We need to have a list of "ah moments" such as

- how tables connect to functions. Given that you have some function of something that produces data. A big idea is that points are approximations of the "true" function. 
   - you can get a better idea of the true function by shrinking the step size. 
- Slopes are meaningful quantities independent of step-size
   - "zooming in" is really related
- Differencing is something that can be undone in that sense that you can get back to the function you started with.
   -And taking slopes can also be undone by picking local slopes. 
- Where do the increments come from? They do not have to come from the table we have, we could get them from using a formula to spit them out. 
- Lo and behold, all the name-band functions (exp, log, sin, etc.) look not very complicated. !!
(These are in fact differential equations, which are extremely handy for describing things in the real world that is not fake or contrived. )

Coding-specific ah-has. 
- you can recognize flat bits on the curve by looking at the numbers generated in capture-coords.py

### 4/19/19

Link to data capture notebook: 

- New version: https://alpha.iodide.io/notebooks/2069/
- Old version: https://alpha.iodide.io/notebooks/1918/
