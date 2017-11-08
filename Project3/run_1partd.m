%% PART D 5.1.2 (c)
a = 3; b = 10; 
y0 = 2;
t0 = 2;

f = @(t,y) (t*y + y) / (t*y + t);

ns = {10, 20, 40, 80,160};

figure (3); hold on; 
title('dy/dt = -y + t*y^(1/2)');

for i = 1:numel(ns)
    n = ns{i};
    h = (b-a)/n;
    
    [y,t] = Rk(f,y0,t0,h,n);

    x = linspace(a,b,n);
  
    plot(x,y,'color','b');
    
end