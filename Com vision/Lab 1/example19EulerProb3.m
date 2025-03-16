% Euler Polar Forms of a complex number 
% (1) rexp(jt) = r(cost+jsint)
% (2) rexp(-jt) = r(cost-jsint)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      jsin(t)
clc, clear all, close all;

syms t t2 freq;

y = @(t,freq) real(cos(freq.*t)-1i.*sin(freq.*t)); % Euler

yhat = @(t2) real(cos(t2)-1i.*sin(t2));

t = linspace(-2*pi,+2*pi,200);
t2 = linspace(-2*pi,+2*pi,200);
freq = 13;
subplot(2,2,1),
plot(y(t,freq),'k','LineWidth',1,...
    'MarkerSize',10), grid, grid minor,
xlabel('t ms'), ylabel('y(t)');
title('y(t,M),M=13')

subplot(2,2,2),
plot(yhat(t2),'b','LineWidth',1,...
    'MarkerSize',10), grid, grid minor,
xlabel('t ms'), ylabel('yhat(t)');
hold on
plot(y(t,freq),'m','LineWidth',1,...
    'MarkerSize',10), grid, grid minor 
xlabel('t ms'), ylabel('y(t)');
hold off
title('yhat(t),y(t,M),M=13')

subplot(2,2,[3,4]),
area(abs(y(t,freq)+y(t,freq)).^2,'FaceColor',"m"), 
hold on,
plot(abs(y(t,freq)+y(t,freq)),'-k','LineWidth',1,...
    'MarkerSize',2), 
hold off,
abs(integral2(y,0,200,1,13))
grid, grid minor,
xlabel('t ms'), ylabel(['\int_{a}^{b}' ...
    '^y(t,M)dt,|y(t,M)+y(t,M)|']);
legend('\int_{a}^{b}|y(t,M)|^2dt','|y(t,M)+y((t,M)|')
title('\int_{a}^{b}|y(t,M)|^2dt,|y(t,M)+y((t,M)|,M=13')