clear; close all;

% Define functions
f1(x) = x^2 − 5;
f2(x)=(x − 2/5)^2;
f3(x) = 3 * exp( cos(2*x) − (log x) ) − 1;

% Define bounds and tollerance
lb = 0; ub = 7; tot = 1e-75; n0 = 100;

p0 = 1; p1 = 2; % Intial guesses
xn = secant(f1,p0, p1, tot, n0);

disp(['Xn ' num2str(xn)]);
