close all; clear;

n  = 100; a = 0; b = 1;   h = (b-a)/n;
x  = linspace(a,b,n+1)';

f  = @(x) x.*(1-x).^2;     % function to differentiate
fpp= @(x) 6*x - 4;  % actual second derivative for comparison

w  = f(x);          % vector of y-values of f

x10 = linspace(a,b,11)';

% form D2, (n-1) X (n+1) second difference matrix
d  = ones(n,1);
L  = 1/h^2 * spdiags([d, -2*d, d], [0, 1, 2], n-1, n+1);

v = L * w;          % vector of approximate y-values of f''

xss= x(2:end-1);

figure(1);
hold on; xlabel('x'); ylabel('fpp(x)');
title('Second Derivative of f1');
plot(xss, v, 'r*');
plot(x10, fpp(x10),'b');

f2 = @(x) exp(x) .* sin(pi .* x);

fpp2 = @(x) exp(x) .* sin(pi .* x) .- pi^2 .* exp(x) .* sin(pi .* x) .+ 2 .* pi .* exp(x) .* cos(pi .* x);

w  = f2(x);

v2 = L * w;

figure(2);
hold on; xlabel('x'); ylabel('fpp(x)');
title('Second Derivative of f2');
plot(xss, v2, 'r*');
plot(x10, fpp2(x10),'b');
