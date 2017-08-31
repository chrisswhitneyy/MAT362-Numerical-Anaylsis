function [ s ] = mp ( n, a, b, f )
% function: Calculations the Remian sum using the midpoint
% method based on number of divisions n, bounds a and b, and a
% function f.
%
% Refactored by Christopher D. Whitney (cw729@nau.edu)
% Date : Aug 30th, 207

  h = (b-a)/n;                    % delta x
  x = linspace(a, b, n+1)';       % gridpoints
  xs = (x(1:end-1)+x(2:end))/2;   % midpoints

  s = h * sum(f(xs));             % Riemann sum

  disp (['h=' num2str(h) ' s=' num2str(s) ' size(xs)=' num2str(size(xs))]);

end
