% creates color map of data two different ways

% reads in 11^2 = 121 numbers from file 'in.dat' using my 'readmat.m' program
A = readmat('in.dat',11);

% could use for complex basins of attraction 
subplot(1,2,1); h = pcolor(A); set(h, 'EdgeColor', 'none');

% could use for complex basins of attraction 
subplot(1,2,2); g = contourf(A,'EdgeColor','none'); 

