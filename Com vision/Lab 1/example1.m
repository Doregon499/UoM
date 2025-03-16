% setting up a function
clc, clear all, close all; % housekeeping
syms t;                    % vector t
x = @(t) exp(-t);          % define function x(t)
% start using x(t)
t = -1:0.1:+1;             % set up vector t
subplot(1,2,1),            % set up row of 2 plots           
a = 1;                     % define amplitude
plot(x(a.*t),'b'),         % plot blue curve
grid on, grid minor,       % insert plot grid
xlabel('t sec'), ylabel('x(t)');% insert labels
title('x(t) = e^{-t}');     % set up plot title
subplot(1,2,2),             % 2nd row plot
a = 5;                      % new amplitude
plot(x(a.*t),'r'),          % plot red curve
grid on,, grid minor,
xlabel('t sec'), ylabel('x(t)');
title('x(t) = e^{-5t}');    % set up plot title
