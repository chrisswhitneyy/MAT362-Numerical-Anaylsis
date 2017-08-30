% driver for myeuler.m
%
% solves y' = f(t,y), t\in[a,b], y(a)=c, with n steps of Euler's 

function edrive()

a = 0; b = 1; c = 1;
f = @(x,y) y;

hold on;
for n = [10,20,100]

    x = linspace(0,1,n+1)';

    y = myeuler(a,b,c,n,f);

    plot(x,y,'blue');
    
end

x10 = linspace(0,1,11)';
plot(x10, actual(x10), 'red*');

end

function t = actual(x)

t = exp(x);

end