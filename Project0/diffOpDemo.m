function diffOpDemo

n  = 100; a = 0; b = 1;   h = (b-a)/n;
x  = linspace(a,b,n+1)'; xs = (x(1:end-1)+x(2:end))/2;

% form D1, n X (n+1) first difference matrix
d  = ones(n,1);
L  = 1/h * spdiags([-d, d], [0, 1], n, n+1);

f  = @(x) x.^4;     % function to differentiate

fp = @(x) 4*x.^3;   % actual derivative for comparison
fpp= @(x) 12*x.^2;  % actual second derivative for comparison

w  = f(x);          % vector of y-values of f
v  = L * w;         % vector of approximate y-values of f'

x10 = linspace(a,b,11)';
figure(1); plot(xs, v, x10, fp(x10), 'red*');

% form D2, (n-1) X (n+1) second difference matrix
d  = ones(n,1);
L  = 1/h^2 * spdiags([d, -2*d, d], [0, 1, 2], n-1, n+1);

v = L * w;          % vector of approximate y-values of f''

xss= x(2:end-1);
figure(2); plot(xss, v, x10, fpp(x10), 'red*');

end
