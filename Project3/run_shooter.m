close all;
%% PROBLEM 2 (d) Shooter Method 
F = @(t,y) [y(2) ; - y(1)^3];
n = 1000; t0 = 0;
ds = {-1,-0.5,0,0.5,1};

t = linspace(0,1,n);

figure(1); hold on; 
title('Shooting Method');
xlabel('y'); ylabel('z');
for i = 1:numel(ds)

    y0 = [0; ds{i}]; 
    w = Rk(F,y0,t0,0.01,n);
    plot(t,w);
     
end


