clc;
clear all;
f = @(x,y)(y-x);
y0 = 2;
x0 = 0;
h = 0.001;
xf = 0.2;
n = (xf-x0)/h;
for i = 1:n
    k1 = h*f(x0,y0);
    k2 = h*f(x0+h/2,y0+k1/2);
    k3 = h*f(x0+h/2,y0+k2/2);
    k4 = h*f(x0+h,y0+k3);
    y1 = y0+(k1+2*k2+2*k3+k4)/6;   
    plot(x0,f(x0,y0))
    hold on
    x0 = x0 + h;
    y0 = y1;
  
 
end
y1