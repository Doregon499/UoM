% use of overlapping plots legend
clc, clear all, close all; % housekeeping
syms t;                    % vector t
x = @(t) exp(-1*1i*2*pi*t);          % define function x(t)
x2 = @(t2) exp(-1*1i*2*pi*7*t2);          % define function x(t)

% start using x(t)
t = -2:0.37:+2;             % set up vector t
t2 = -2:0.1:+2;             % set up vector t
subplot(2,2,1),            % set up row of 2 plots           
plot(x(t),'b','LineWidth',2,'MarkerSize',10), 
xlabel('t sec'), ylabel('x(t)');% insert labels
title('x(t) = e^{-1j2piMt,M=1}');     % set up plot title
grid on, grid minor;

subplot(2,2,2),             % 2nd row plot
plot(x2(t2),'r','LineWidth',2,'MarkerSize',10)
xlabel('t sec'), ylabel('x(t)');
title('x(t) = e^{-1j2piMt},M=7');    % set up plot title
grid on, grid minor,

subplot(2,2,[3,4]),
plot(x(t),'b','LineWidth',2,'MarkerSize',10),
hold on;
plot(x(t)+x(t),'r','LineWidth',2,'MarkerSize',10),
xlabel('t sec'), ylabel('x(t)');% insert labels
grid on, grid minor;
xlabel('t sec'), ylabel('x(t)');
legend('x(t) = e^{-1j2piMt,M=1}','x(t)+x(t) = e^{-1j2piMt}+e^{-1j2piMt},M=1');    % set up legend