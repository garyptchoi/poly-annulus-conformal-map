% Compute conformal parameterization of multiply-connected surfaces onto a 
% 2D circle domain
% 
% Main functions:
% map = annulus_conformal_map(v,f)
% map = poly_annulus_conformal_map(v,f)
%
% Input:
% v: nv x 2 or 3 vertex coordinates of a multiply-connected surface
% f: nf x 3 triangulations of a multiply-connected surface
% 
% Output:
% map: nv x 2 vertex coordinates of the conformal parameterization
%
% If you use this code in your own work, please cite the following paper:
% [1] G. P. T. Choi, 
%     "Efficient Conformal Parameterization of Multiply-Connected Surfaces Using Quasi-Conformal Theory"
%     Journal of Scientific Computing, 87(3), 70, 2021.
% 
% Copyright (c) 2021, Gary Pui-Tung Choi
% https://math.mit.edu/~ptchoi

addpath(genpath('code'));
addpath('data');

%% Annulus conformal map (ACM)
% - For surfaces with one hole only
% - The inner circle of the parameterization will always be centered at 
%   the origin

load('amoeba1.mat');
% load('amoeba2.mat');
% load('sophie.mat');

plot_mesh(v,f);

tic;
map = annulus_conformal_map(v,f);
toc;

plot_mesh(map,f);

%% poly-annulus conformal map (PACM)
% - For surfaces with one or more holes
% - The position of the inner circles of the parameterization will be 
%   automatically determined

load('alex_3.mat');
% load('lion_5.mat');
% load('peaks_7.mat');

plot_mesh(v,f);

tic;
map = poly_annulus_conformal_map(v,f);
toc;

plot_mesh(map,f);
