function [w,t] = Rk(f,y0,t0,h,n)
%RK An implementation of Runge-Kutta method for approximating 
% differnitinal equations with intial values. 

m = size(y0(:,1),1);
w = zeros(m,n);
t = zeros(m,n);

w(:,1) = y0; 
t(:,1) = t0;

for i=1:(n-1)
  k1 = h*f(t(:,i),w(:,i));
  k2 = h*f(t(:,i) + h/2, w(:,i) + k1/2);
  k3 = h*f(t(:,i) + h/2, w(:,i) + k2/2);
  k4 = h*f(t(:,i) + h,   w(:,i) + k3);
    
  w(:,i+1) = w(:,i) + (k1 + 2*k1 + 2*k2 + k4)/6;
  t(:,i+1) = t(:,i) + h;
  
end

end

