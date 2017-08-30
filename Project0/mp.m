function mp

n = 100; a = 0; b = 1;          % divide [a,b] into n pieces

f = @(x) (x.^2);                % integrate this f over [a,b]

h = (b-a)/n;                    % delta x
x = linspace(a, b, n+1)';       % gridpoints
xs = (x(1:end-1)+x(2:end))/2;   % midpoints

s = h * sum(f(xs));             % Riemann sum

fprintf('%d\t%f\t%f\n', n, h, s);

end