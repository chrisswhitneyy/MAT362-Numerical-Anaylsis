function [xn] = bisection_rec(f,a,b,tot,no)
  p = a + (b-a)/2;
  if no == 0 || (b-a)/2 < tot
    xn = p; return;
  elseif (f(a)*f(p) > 0)
    xn = bisection_rec(f,p,b,tot,no-1);
  else
    xn = bisection_rec(f,a,p,tot,no-1);
  end
end
