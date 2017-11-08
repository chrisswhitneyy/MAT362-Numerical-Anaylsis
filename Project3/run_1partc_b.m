close all; clear;

%% PART A 5.1.2 (a)
a = 0; b = 1; 
y0 = 1;
t0 = 0;

f = @(t,y) exp(t - y);
fe = @(t,y) log( exp(t) - 1 + exp(1));

ns = {10, 20, 40, 80,160};

figure (1); hold on; 
title('dy/dt = exp(t - y)');
x = linspace(a,b,10);
plot(x,fe(x),'color','r');

for i = 1:numel(ns)
    n = ns{i};
    h = (b-a)/n;
    
    [y,t] = Rk(f,y0,t0,h,n);
    
    x = linspace(a,b,n);
    
    plot(x,y,'color','b');
    
end

clear; 

%% PART A 5.1.2 (b)
a = 1; b = 2; 
y0 = 2;
t0 = 1;

f = @(t,y) t^(-2) * (sin(2*t) - 2*t*y);
fe = @(t,y) (-cos(2.*t) + cos(2) + 4) ./ (2*t.^2);

ns = {10, 20, 40, 80,160};

figure (2); hold on; 
title('dy/dt = t^(-2) * (sin(2*t) - 2*t*y)');
x = linspace(a,b,10);
plot(x,fe(x),'color','r');

for i = 1:numel(ns)
    n = ns{i};
    h = (b-a)/n;
    
    [y,t] = Rk(f,y0,t0,h,n);

    x = linspace(a,b,n);
  
    plot(x,y,'color','b');
    
end

clear; 

%% PART A 5.1.2 (c)
a = 2; b = 3; 
y0 = 2;
t0 = 2;

f = @(t,y) -y + t*y^(1/2);
fe = @(t,y) exp(-t) .* (exp(t/2) .* (t-2)  + sqrt(2) .* exp(1)).^2;

ns = {10, 20, 40, 80,160};

figure (3); hold on; 
title('dy/dt = -y + t*y^(1/2)');
x = linspace(a,b,10);
plot(x,fe(x),'color','r');

for i = 1:numel(ns)
    n = ns{i};
    h = (b-a)/n;
    
    [y,t] = Rk(f,y0,t0,h,n);

    x = linspace(a,b,n);
  
    plot(x,y,'color','b');
    
end