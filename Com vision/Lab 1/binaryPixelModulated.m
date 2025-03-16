% Modulating greyscale pixel waveforms

clc, clear all, close all, whitebg('w')
imgr = im2bw(imread('bikerPair.PNG')); % non-doubled pixel values
img = double(im2bw(imread('bikerPair.PNG'))); % non-doubled pixel values
g = double(imread('bikerPair.PNG')); % try any colour image
subplot(2,2,1), imshow(imgr),axes,grid;        % display image
t=1:1:256;
% m = @(t) exp(-j*t); % m(t) analytic function
m = @(t) real(exp(-j*t - 0.5)); % m(t) analytic function
subplot(2,2,2)
plot(-pi/4*img(200,:),'m','LineWidth',2), grid on, hold on,   % plot red channel values
plot(g(200,:,2),'g','LineWidth',1), grid on, hold on,   % plot green channel values
plot(g(200,:,3),'b','LineWidth',1), grid on, hold off,   % plot blue channel values
title('g(200,:) row 200 channel values'),
subplot(2,2,3)
% plot(t.*g(:,280,1),'r','LineWidth',1), grid on, hold on,   % plot red channel values
plot(t.*img(:,280),'m','LineWidth',2), grid on, hold on,   % plot green channel values
plot(m(t).*g(:,280,1),'r','LineWidth',1), grid on, hold on,   % plot red channel values
plot(m(t).*g(:,280,2),'g','LineWidth',1), grid on, hold on,   % plot green channel values
plot(m(t).*g(:,280,3),'b','LineWidth',1), grid on, hold off,   % plot blue channel values
% plot(g(:,280,3),'b','LineWidth',1), grid on, hold off,   % plot blue channel values
title('g(:,280) col 280 channel values'),
subplot(2,2,4)
plot(m(t).*img(:,280),'k','LineWidth',2), grid on, hold on,
plot(m(t).*g(:,280,1),'r','LineWidth',1), grid on, hold on,   % plot red channel values
plot(m(t).*g(:,280,2),'g','LineWidth',1), grid on, hold on,   % plot green channel values
plot(m(t).*g(:,280,3),'b','LineWidth',1), grid on, hold off,   % plot blue channel values
title('g(:,280) col 280 all,r,g,b amplitudes'),
legend('m(t)g(:,280)','r','g','b')