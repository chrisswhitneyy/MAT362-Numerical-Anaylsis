close all;
% Duck image from course text
x = [ 1 2 3 4 5 6 7 8 9 ];
y = [ 2 3 5 5 6 8 8 9 10];

n = numel(x);

[a, b, c, d] = cublicspline_construct(x,y);

figure(1); hold on;
title('Small Data Set'); xlabel('x'); ylabel('y');
plot(x,y,'r*');
for i = 1:n
  t = linspace(x(i),x(i.+1),100)' ;
  f = a(i) .+ (t-x(i)).*b(i) .+ (t-x(i)).^(2).*c(i) .+ (t-x(i)).^(3).*d(i);
  plot(t, f);
end

% Duck image from course text
x = [ 0.9 1.3 1.9 2.1 2.6 3.0 3.9 4.4 4.7 5.0 6.0 7.0 8.0 9.2 10.5 11.3 11.6 12.0 12.6 13.0 13.3];
y = [ 1.3 1.5 1.85 2.1 2.6 2.7 2.4 2.15 2.05 2.1 2.25 2.3 2.25 1.95 1.4 0.9 0.7 0.6 0.5 0.4 0.25];

n = numel(x);

[a, b, c, d] = cublicspline_construct(x,y);


figure(2); hold on;
title('Duck'); xlabel('x'); ylabel('y');
plot(x,y,'r*');
for i = 1:n
  t = linspace(x(i),x(i.+1),100)' ;
  f = a(i) .+ (t-x(i)).*b(i) .+ (t-x(i)).^(2).*c(i) .+ (t-x(i)).^(3).*d(i);
  plot(t, f);
end
