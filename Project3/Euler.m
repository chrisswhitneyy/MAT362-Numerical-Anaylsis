function [y,t] = Euler(f,y0,t0,h,n)
%EULER An implementation of Eulers method for approximating 
% differnitinal equations with intial values. 
%
% INPUT: 
%   f = function under investagation
%   y0 = initial value of y 
%   t0 = initial value of t 
%   h = step size 
%   n = number of steps 
%
% OUTPUT: 
%   y = vector of y-values that approximate the solution for f

y = zeros(n,1);
t = zeros(n,1);

y(1,1) = y0;
t(1,1) = t0;

for i = 1:(n-1)
  t(i+1,1) = t(i) + h;
  y(i+1,1) = y(i,1) + h*f(t(i,1),y(i,1));
end

end

