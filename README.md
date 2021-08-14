# Poly-Annulus Conformal Map

<img src = "https://github.com/garyptchoi/poly-annulus-conformal-map/blob/main/cover.jpg" height="250" />

annulus_conformal_map/poly_annulus_conformal_map: Conformally map a multiply-connected triangle mesh to a 2D circle domain (unit disk with circular holes)

This code computes the annulus and poly-annulus conformal parameterizations of multiply-connected triangle meshes (i.e. angle-preserving mappings onto a 2D circle domain) using the proposed ACM and PACM algorithms in [1].

Any comments and suggestions are welcome. 

If you use this code in your own work, please cite the following paper:

[1] G. P. T. Choi, 
    "[Efficient Conformal Parameterization of Multiply-Connected Surfaces Using Quasi-Conformal Theory.](https://doi.org/10.1007/s10915-021-01479-y)"
    Journal of Scientific Computing, 87(3), 70, 2021.

Copyright (c) 2021, Gary Pui-Tung Choi

https://math.mit.edu/~ptchoi

===============================================================

Usage:
* (For surface with one hole) map = annulus_conformal_map(v,f)
* (For surface with one or more holes) map = poly_annulus_conformal_map(v,f)

Input:
* v: nv x 2 or 3 vertex coordinates of a multiply-connected surface
* f: nf x 3 triangulations of a multiply-connected surface

Output:
* map: nv x 2 vertex coordinates of the conformal parameterization

================================================================

Remarks:
* For annulus_conformal_map, the inner circle of the parameterization will always be centered at the origin.
* For poly_annulus_conformal_map, the position of the inner circles of the parameterization will be automatically determined.

================================================================

Dependencies:
* [find_inner_circle.m](https://www.mathworks.com/matlabcentral/fileexchange/32543-maximum-inscribed-circle-using-voronoi-diagram)
* [Kabsch.m](https://www.mathworks.com/matlabcentral/fileexchange/25746-kabsch-algorithm)
