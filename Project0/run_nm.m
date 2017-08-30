clear; close all;

f = @(x) x^2 - x^4;
fp = @(x) 2*x - 4*x^3;
tot = 1e-10;
x0_1 = 2;
x0_2 = 1/4;

disp('--- Project0 Netwon Methods ---');
disp(' Where, ')
disp(' f(x) = x^2 ,  g(x) = x^4');
disp(' f - g = x^2 - x^4');
disp(' fp = 2x - 4x^3');
disp([' Tollerance thershold = ' num2str(tot) ]);

disp('-- Guess 1 Method 1 (Sequential) --');
disp(' x0 = 2');
xn1_1 = nm_seq(f,fp,x0_1,tot);
disp([' Result = ' num2str(xn1_1)]);

disp('-- Guess 2 Method 1 (Sequential) --');
disp(' x0 = 1/4');
xn2_1 = nm_seq(f,fp,x0_2,tot);
disp([' Result = ' num2str(xn2_1)]);

disp('-- Guess 1 Method 2 (Recurive) --');
disp(' x0 = 2');
xn1_2 = nm_rec(f,fp,x0_1,tot);
disp([' Result = ' num2str(xn1_2)]);

disp('-- Guess 2 Method 1 (Recurive) --');
disp(' x0 = 1/4');
xn2_2 = nm_rec(f,fp,x0_2,tot);
disp([' Result = ' num2str(xn2_2)]);
