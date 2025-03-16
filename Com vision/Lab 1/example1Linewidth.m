% use of overlapping plots legend
clc, clear all, close all; % housekeeping
syms t;                    % vector t
x = @(t) exp(-t);          % define function x(t)
% start using x(t)
t = -1:0.01:+1;             % set up vector t
subplot(2,2,1),            % set up row of 2 plots           
plot(x(t),'b','LineWidth',2,'MarkerSize',10), 
xlabel('t sec'), ylabel('x(t)');% insert labels
title('x(t) = e^{-t}');     % set up plot title
subplot(2,2,2),             % 2nd row plot
plot(x(5.*t),'r','LineWidth',2,'MarkerSize',10)
xlabel('t sec'), ylabel('x(t)');
title('x(t) = e^{-5t}');    % set up plot title
subplot(2,2,[3,2]),             % 2nd row plot
plot(x(3.*t),'b','LineWidth',2,'MarkerSize',10),hold on,
plot(x(5.*t),'r','LineWidth',2,'MarkerSize',10),hold off,
grid on, grid minor,
xlabel('t sec'), ylabel('x(t)');
legend('e^t','e^{-5t}');    % set up legend