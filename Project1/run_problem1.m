clear; close all;

% Define functions
f1 = @(x) x^2 - 5;
f2 = @(x) (x - 2/5)^2;
f3 = @(x) 3 * exp( cos(2*x) - log(x) ) - 1;

% Plot functions
%x = linspace(-10,10,100);
%figure(1); hold on; title('f1'); plot(x,arrayfun(f1,x));
%figure(2); hold on; title('f2'); plot(x,arrayfun(f2,x));
%figure(3); hold on; title('f3'); plot(x,arrayfun(f3,x));

% Defin functions derivatives
fp1 = @(x) 2*x;
fp2 = @(x) 2*(x - 2/5);
fp3 = @(x) (-1) * ( 3*exp(cos(2*x)) / x^2 ) - ( 6*sin(2*x)*exp(cos(2*x))  / x );

% Define bounds and tollerance
lb = 0; ub = 7; tot = 1e-10; n0 = 500;

% f1 -- Run methods
disp('f1 Secant');
p0 = 1; p1 = 2; % Intial guesses
xn_sec = secant(f1,p0, p1, tot, n0);
disp('f1 Bisection');
a =0; b = 7; % Intial bounds
xn_bis = bisection(f1,a,b,tot,n0);
disp('f1 Newtons');
x0 = 4; % Intial guess
xn_new = newtons(f1,fp1,x0,tot);

disp('-- f1 --');
disp(['Bisection : Xn ' num2str(xn_bis)]);
disp(['Secant : Xn ' num2str(xn_sec)]);
disp(['Newtons : Xn ' num2str(xn_new)]);

% f2 -- Run methods
disp('f2 Secant');
p0 = -2; p1 = 2; % Intial guesses
xn_sec = secant(f2,p0, p1, tot, n0);
disp('f2 Bisection');
a = 0; b = 7; % Intial bounds
xn_bis = bisection(f2,a,b,tot,n0);
disp('f2 Newtons');
x0 = 4; % Intial guess
xn_new = newtons(f2,fp2,x0,tot);

disp('-- f2 --');
disp(['Bisection : Xn ' num2str(xn_bis)]);
disp(['Secant : Xn ' num2str(xn_sec)]);
disp(['Newtons : Xn ' num2str(xn_new)]);

% f3 -- Run methods
disp('f3 Secant');
p0 = -2; p1 = 2; % Intial guesses
xn_sec = secant(f3,p0, p1, tot, n0);
disp('f3 Bisection');
a = 0; b = 7; % Intial bounds
xn_bis = bisection(f3,a,b,tot,n0);
disp('f3 Newtons');
x0 = 2; % Intial guess
xn_new = newtons(f3,fp3,x0,tot);

disp('-- f3 --');
disp(['Bisection : Xn ' num2str(xn_bis)]);
disp(['Secant : Xn ' num2str(xn_sec)]);
disp(['Newtons : Xn ' num2str(xn_new)]);
