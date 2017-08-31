% can call from edrive.m

function y = myeuler(a,b,c,n,f)

% approximates sol to y' = f(x,y) over [a,b] with y(a)=c
% via n steps of Euler's method

dx = (b-a)/n;
y = ones(n+1,1); y(1) = c;

for i = 1: n
    x = a + (i-1)*dx;
    y(i+1) = y(i) + dx*f(x,y(i));
end
