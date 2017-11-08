close all; clear;

%% PROBLEM 2 (c) 
F = @(t,y) [y(2) ; y(1) * (1 - y(1)^2)];

t0 = 0;
n = 1000; T = 20; h = T / n;

zs = { [0;1/2]  }; 

figure(1); hold on; title('Different Zs');
xlabel('z'); ylabel('y');
for i = 1:numel(zs)
    w = Rk(F,zs{i},t0,h,n);
    plot(w(1,:),w(2,:));
end

figure(2); hold on; title('y vs t');
t = linspace(0,T,n);
plot(t,w(1,:));
