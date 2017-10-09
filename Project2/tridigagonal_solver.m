function [ x ]  = tridigagonal_solver( L, D, U, b )
% function: A tridagonal_solver which uses Gaussan elimnation to solve for x.
% It works by iterating over the different matrix and performs the following steps,
%   1. Zeros out the lower digagonal
%   2. Solve for Xn
%   3. Back subsitute to solve all other x's
%
% Extended description:
% It takes the four matrixes a parameter with size m x 1
%   L : A lower digagonal matrix
%   D : A lead digagonal matrix
%   U : A upper digagonal matrix
%   b : A matrix containg the equalitity values (e.g. Ax = b )


  n = numel(D);

  % 1. Zeroing out lower dialogal
  for i = 2:n
    S = - L(i) / D(i-1);
    D(i) = D(i) + S * U(i-1);
    b(i) = b(i) + S * b(i-1);
  end

  % 2. Solve for Xn
  x(n) = b(n) / D(n);

  % 3. Back subsitute
  for i = n - 1: -1  : 1
    x(i) = ( b(i) - U(i) * x(i+1) ) / D(i);
  end

end  % function
