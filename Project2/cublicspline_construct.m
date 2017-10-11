function [ A, B, C, D ] =  cublicspline_construct( X , Y )
  % function: A cublicspline_construct constructs the constants for a cubic spline
  % Input:
  %   X = n;x0,x1,...,xn;
  %   Y = n; a0 = f(x0),a1 = f(x1),...,an = f(xn).
  % Output:
  %   A, B, C, D = aj,bj,cj,dj forj=0,1,...,n-1.

  n = numel(X);
  A = Y;

  % Set h to differences of X's
  for i = 1 : (n-2)
    h(i) = X(i+1) - X(i);
  end

  for i = 2 : (n-2)
    alpha(i) = (3/h(i))*(A(i+1)-A(i))-(3/h(i-1))*(A(i)-A(i-1));
  end

  l(1) = 1; u(1) = 0; z(1) = 0;

  for i = 2 : (n-2)
    l(i) = 2 * (X(i+1) - X(i-1)) - h(i-1)*u(i-1);
    u(i) = h(i) / l(i);
    z(i) = (alpha(i) - h(i-1)*z(i-1))/l(i);
  end

  l(n) = 1; z(n) = 0; C(n) = 0;

  for i = (n-2) : -1 : 1
    C(i) = z(i) - u(i)*C(i+1);
    B(i) = (A(i+1) - A(i)) /h(i) - h(i)*(C(i+1) + 2*C(i))/3;
    D(i) = (C(i+1) - C(i)) / (3*h(i));
  end

end
