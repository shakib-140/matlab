clc;
clear all;
f=@(x) (3*x^2-5*x+3)
a=1
b=3
error=0.001;
while(abs(a-b)>error)
 c=(a+b)/2;
 if(f(a)*f(c)>0)
     
   a=c;
 else
     b=c;
 end
end
fprintf('solution is %f',c)


