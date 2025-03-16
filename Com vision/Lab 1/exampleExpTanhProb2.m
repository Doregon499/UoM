% exponentially modulated tanh function
clc, clear all, close all;

syms a b t; % introduce 3 variables
x = @(a,b,t) exp(b.*1i*t)+tanh(-a.*t); % introduce new fn}

t = linspace(-8,+2*pi,300); % small sample

subplot(2,2,1), a = 3;b = 8;
plot(-x(a,b,t),'k','LineWidth',3,...
    'MarkerSize',5), % discrete fn values
grid, grid minor,
xlabel('t ms'), ylabel('x(1,0.5,t)');
title('x(a,b,t)= e^{3*j*t}+tanh(8*t)')

subplot(2,2,2), a = 80;b = 5;
plot(x(a,b,t),'r','LineWidth',3,...
    'MarkerSize',2), grid, grid minor,
xlabel('t ms'), ylabel('x(8,0.2,t)');
title('x(a,b,t) = e^{80*j*t}+tanh(5*t)')

subplot(2,2,[3,4])
plot(x(a,b,t),'k','LineWidth',3,...
    'MarkerSize',5), hold on,
plot(x(a,b,t)+x(a,b,t),'r','LineWidth',3,...
    'MarkerSize',10),hold off;grid, grid minor,
xlabel('t ms'), ylabel('x(1,0.5,t),x(8,0.2,t)');
legend(' x(a,b,t)','x(a,b,t)+x(a,b,t)')