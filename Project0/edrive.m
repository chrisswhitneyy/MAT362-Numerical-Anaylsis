% driver for myeuler.m
%
% solves y' = f(t,y), t\in[a,b], y(a)=c, with n steps of Euler's

function edrive()

a = 0; b = 1; c = 1;
f = @(x,y) y^2;
g = @(x,y) y^4;

figure
hold on;
for n = [10,20,40,80,160]

    x = linspace(0,1,n+1)';

    y = myeuler(a,b,c,n,f);

    plot(x,y,'color','blue');

end

x10 = linspace(0,1,11)';

plot(x10, actual_f(x10),'color', 'red');
plot(x10, actual_g(x10),'color', 'red');

end

function t = actual_f(x)

t = exp(x);

end

function t = actual_g(x)

t = exp(x);

end
