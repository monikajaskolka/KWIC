# KWIC
A Matlab implementation of the Key Word in Context (KWIC) system as described by "Modularization 1" in David L. Parnas' paper ["On the Criteria To Be Used in Decomposing Systems into Modules" (1972)](https://dl.acm.org/doi/10.1145/361598.361623).

## Prerequisites
Ensure that the KWIC folder is on your Matlab [search path](https://www.mathworks.com/help/matlab/matlab_env/add-remove-or-reorder-folders-on-the-search-path.html). For best results, use Matlab R2019a.

## To Run
In the Matlab Command Window, type:
```
KWICmaster;
```
or
```
KWICmaster('example.txt');
```
or
```
KWICmaster(['Example text' newline 'More words']);
```
