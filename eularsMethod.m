clc;
clear all;
f = @(y,t)(-2*t*y);
y0 = 1;
t0 = 0;
h = 0.01;
tf = 5;
n = (tf-t0)/h;
for i = 1:n
    yf = y0+h*f(y0,t0);
    y0 = yf;
    plot(y0,f(y0,t0))
    hold on;
    t0 = t0+h;
end
yf
