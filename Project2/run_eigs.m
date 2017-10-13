n  = 100;
% form D2, (n-1) X (n+1) second difference matrix
d  = ones(n,1);
D2  = 1/h^2 * spdiags([d, -2*d, d], [0, 1, 2], n-1, n+1);

[V,D]= eigs(-D2, 6, ‘sm’);

figure(1); hold on;
title('V');
plot(V);

figure(1); hold on;
title('D');
plot(D);
