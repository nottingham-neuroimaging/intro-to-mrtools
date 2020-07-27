# Data model

- To get an idea of the general design decisions that were made, have a look at Justin Gardner's [overview of scripting](http://gru.stanford.edu/doku.php/mrtools/scriptingoverview). 

## General questions

In some of the following videos, I want to explore

- Where are things stored internally?
- How to access information from command line?
- What's the best way to translate the command line manipulations in a reproducible script?

We'll start with a relatively straightforward example (block design experiment), which can be analysed in different ways. It has sufficient complexity to show off some of the important features worth knowing about.

## Notes

- code for `unfold()` function from [matlab central post](https://uk.mathworks.com/matlabcentral/answers/94122-is-there-a-function-that-will-display-all-the-fields-of-a-nested-structure-in-matlab) -- it's used to display the nested fields of structures in Matlab and might help illustrate how and where things are stored.

