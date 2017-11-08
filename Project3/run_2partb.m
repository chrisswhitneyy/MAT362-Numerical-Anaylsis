close all; clear;

%% PROBLEM 2 (b) 
F = @(t,z) [z(2); -z(1)];
z0 = [0;1]; t0 = 0;
n = 1000; 
Ts = {100};

figure(1); hold on; title('z vs y');
for i = numel(Ts)
    h = Ts{i} / n;
    w = Rk(F,z0,t0,h,n);
    plot(w(1,:),w(2,:));
end

figure(2); hold on; title('t vs y');
t = linspace(0,Ts{1},n);
plot(t,w(1,:));

