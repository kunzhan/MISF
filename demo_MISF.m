% function demo_MISF
clear
addpath('./tools');
% img = 'disk';
I1 = imread('../images/disk1.gif'); % done
I2 = imread('../images/disk2.gif');


I(:,:,1) = I1;
I(:,:,2) = I2;
tic
F_misf = MISF(I);
t_misf = toc;