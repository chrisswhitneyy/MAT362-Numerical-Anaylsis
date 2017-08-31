% driver for myeuler.m
%
% solves y' = f(t,y), t\in[a,b], y(a)=c, with n steps of Euler's
close all; 
clear; 

a = 0; b = 0.9; c = 1;
f = @(x,y) y.^2;

figure
hold on;
title('Euler Methods vs. Actual');
for n = [10,20,40,80,160]

    x = linspace(a,b,n+1)';

    y = myeuler(a,b,c,n,f);

    plot(x,y,'color','blue');
      
end

x10 = linspace(a,b,11)';

plot(x10, actual_f(x10),'r*');

a = 0; b = 0.3; c = 1;
g = @(x,y) y.^4;

figure
hold on;
title('Euler Methods vs. Actual');
for n = [10,20,40,80,160]

    x = linspace(a,b,n+1)';

    y = myeuler(a,b,c,n,g);

    plot(x,y,'color','blue');
      
end

x10 = linspace(a,b,11)';

plot(x10, actual_g(x10),'r*');
x =actual_g(x10);

function t = actual_f(x)

t = 1 ./ (1 - x);

end

function t = actual_g(x)
% Solve for actual value solution
t = 1/4 * x.^3 + 1; % Wrong

end







