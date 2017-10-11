function [ x ] = gauss_sidel_solver( L, D, U, b, maxIt)
% function: A tridagonal_solver which uses Gauss Sidel method to solve a method,
% this using an inital x guess and then iterativily updates that guess until the
% converages cretria has been met
%
% Input:
%   L = A lower digagonal matrix
%   D = A lead digagonal matrix
%   U = A upper digagonal matrix
%   b = right hand side vector
%   maxIt = max iterations

% Output:
%   x = solution vector

  n = numel(b);
  x = zeros(b,1); % inital guesses

  it = 1;
  while it < maxIt
    x(1) = ( b(1) - U(1)*x(2) ) / D(1);

    for i=2:n-1

      x(i) = ( b(i) - L(i)*x(i) - U(i)*x(i+1) ) / D(i);

    end

    x(n) = ( b(n) - L(n)*x(n-1) ) / D(n);

    it = it + 1;

  end


end
