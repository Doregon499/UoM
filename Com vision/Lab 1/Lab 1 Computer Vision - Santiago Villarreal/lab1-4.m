% Lab Example edited.
% By:Enze Cui & JFP
% edited by: Santiago Villarreal

clc, clear, close all;

%Initialization
EXP_NAME='_ImgScalarField';
Img_name = ['person'];
IMG0 = imread([Img_name,'.jpeg']);
IMG = rgb2gray(IMG0);
[row,col,] = size(IMG);

%calculation
x = round(row/20)+1:round(row/10):round(row/20)+row;
y = round(col/20+1):round(col/10):round(col/20)+col; 
[xx,yy] = meshgrid(y,x); %construct the vector field using motions

%visualization
f = figure;

subplot(1,3,1),% plot the frame
imagesc(IMG0),grid on,axis on;
title (['EV Image: ',Img_name]);

subplot(1,3,2);   %plot the vector field
scatter(xx,yy,'o','b','filled');
text(200,300,'88')
grid on,axis on;
set(gca, 'YDir','reverse');
title('Scalar Field')

subplot(1,3,3);   %plot the vector
scatter(200,300,'o','r','filled');
text(200,300,'88')
grid on,axis on;
set(gca, 'YDir','reverse');
title('Sc Field')

disp('finish')