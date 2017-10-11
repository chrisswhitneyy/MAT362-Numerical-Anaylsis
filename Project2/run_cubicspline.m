close all;

f = @(x) x ;
X = [0,1,2,3,4,5,6,7,8,9,10];
Y = f(X);

[A, B, C, D] = cublicspline_construct(X,Y);

pp = mkpp(X,[A, B, C, D]);
x = linspace(1,10);
y = ppval(pp,x);

figure (1)
hold on;
plot(X,f(X),'b');
plot(x,y,'r');
