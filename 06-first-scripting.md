# First steps with scripting

## creating a `view` and basic get/set (video 6.1)

Assuming you have done the intial setup step with `mrInit`, you can script all the processing rather than using GUI interactions. For groups or participants, where all the scanning sessions have a consistent order, this will save you some time and also avoid errors that can get introduced by mistyping/clicking, etc.

(Note: There is also a way to script the initial step, but we'll leave this for another unit/video).

To have a first look, try out the following lines of code (command line)

```matlab
cd 20200721_demo
whos % check workspace is empty.
% close all, clear all % if not.

v = newView() 
viewGet(v, 'curscan')
viewGet(v, 'curgroup')
```

The code just above only does `get` operations - we are not actually changing the state of the `view` variable... but we can!

```matlab
% assuming you have v from above
viewGet(v, 'curgroup')
```

## running an analysis in a script (video 6.2)

- how to run a correlation analysis from scratch / in script
- check out where things get saved.
- can we reconnect with the analysis in an interactive session?

Have a look [at this script](simpleMrToolsScript.m){:target="_blank"} to see the steps in sequence / with some additional comments.

## Helpful functions

- function for **loading** analyses, anatomies, overlays, ROIs, ..... follow the convention **load**`XXXX()`
- look at the help for `loadAnalysis`, `loadAnatomy`, `loadOverlay`, ... to get a feel for how they work and what input arguments they require.
- for **saving** the same "objects" (analyses, anatomies, overlays, ...) there is a corresponding **save**`XXXX()` function. Explore the help for them, too.