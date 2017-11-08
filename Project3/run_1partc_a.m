close all; clear;

%% PART A 5.1.1 (a)
a = 0; b = 1; 
y0 = 1;
t0 = 0;

f = @(t,y) y*cos(t);
fe = @(t,y) exp(sin(t));

ns = {10, 20, 40, 80,160};

figure (1); hold on; 
title('dy/dt = y cos t');
    
for i = 1:numel(ns)
    n = ns{i};
    h = (b-a)/n;
    
    [y,t] = Rk(f,y0,t0,h,n);

    x = linspace(a,b,n);
    
    plot(x,fe(x),'color','r');
    plot(x,y,'color','b');
    
end

clear; 

%% PART A 5.1.1 (b)
a = 1; b = 2; 
y0 = 0;
t0 = 1;

f = @(t,y) (2/t)*y + t^2*exp(t);
fe = @(t,y) t.^2 .* (exp(t) - exp(1) );

ns = {10, 20, 40, 80,160};

figure (2); hold on; 
title('dy/dt = (2/t)*y + t^2*exp(t)');

x = linspace(a,b,10);
plot(x,fe(x),'color','r');

for i = 1:numel(ns)
    n = ns{i};
    h = (b-a)/n;
    
    [y,t] = Rk(f,y0,t0,h,n);
    x = linspace(a,b,n);
    plot(x,y,'color','b');
    
end

%% PART A 5.1.1 (c)
a = 1; b = 2; 
y0 = sqrt(2)*exp(1);
t0 = 1;

f = @(t,y) (-2/t)*y + t^2*exp(t);
fe = @(t,y) (t.^4 .* exp(t) - 4 .* t.^3 .* exp(t) + 12 .* t.^2 .* exp(t) - 24 .* t .* exp(t) + 24 .* exp(t) + (sqrt(2) - 9) .* exp(1) ) ./ (t.^2);

ns = {10, 20, 40, 80,160};

figure (3); hold on; 
title('dy/dt = (-2/t)*y + t^2*exp(t)');

x = linspace(a,b,10);
plot(x,fe(x),'color','r');

for i = 1:numel(ns)
    n = ns{i};
    h = (b-a)/n;
    
    [y,t] = Rk(f,y0,t0,h,n);
    x = linspace(a,b,n);
    plot(x,y,'color','b');
    
end

%% PART A 5.1.1 (d)
a = 0; b = 1; 
y0 = 1;
t0 = 0;

f = @(t,y) (4*t^3 * y ) / ( 1 + t^4 );
fe = @(t,y) 1 + t.^4;

ns = {10, 20, 40, 80,160};

figure (4); hold on; 
title('dy/dt = (4*t^3 * y ) / ( 1 + t^4 )');

x = linspace(a,b,10);
plot(x,fe(x),'color','r');

for i = 1:numel(ns)
    n = ns{i};
    h = (b-a)/n;
    
    [y,t] = Rk(f,y0,t0,h,n);
    x = linspace(a,b,n);
    plot(x,y,'color','b');
    
end
 



