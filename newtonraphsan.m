clc 
clear all;
f=@(x) 2^x-5*x+2;
df=@(x) log(2)*(2^x)-5;
x0=0;
n=10;
if df(x0)~=0
    for i=1:n
        x1=x0-f(x0)/df(x0);
        fprintf('x%d=%0.4f\n',i,x1);
        %if abs(x1-x0)<e
        % break
        %end
        x0=x1;
    end
    else
            fprintf('newtor raphsan fail');
        
end