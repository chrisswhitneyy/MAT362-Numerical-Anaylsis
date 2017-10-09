% Run script to test the tridigagonal_solver

% Part a

% System 1 :
% 2x1 + x2 = 8, 2x1 - x2 = 0
% Exact solutions x1 = 2, x2=4
A = [2,8; 2,-1]; b = [8,0];
d = spdiags(A); L = d(:,1); D = d(:,2); U = d(:,3);
x = tridigagonal_solver(L,D,U,b);

disp ('--System 1--');
disp ('   2x1 + x2 = 8, 2x1 - x2 = 0');
disp ('   Exact solutions x1 = 2, x2=4');
disp (['   Solver solutions x1=' num2str(x(1)) ' x2=' num2str(x(2)) ]);

% System 2 :
% x1 + x2 + x3 = 6, x1 - x2 + x3 = 2, 2x1 + x2 + x3 = 7
% Exact solutions x1 = 2, x2=4
A = [1,1,1; 1,-1,1; 2,1,1]; b = [6,2,7];
d = spdiags(A); L = d(:,1); D = d(:,2); U = d(:,3);
x = tridigagonal_solver(L,D,U,b);

disp ('--System 1--');
disp ('   x1 + x2 + x3 = 6, x1 - x2 + x3 = 2, 2x1 + x2 + x3 = 7');
disp ('   Exact solutions x1=1, x2=2, x3=3');
disp (['   Solver solutions x1=' num2str(x(1)) ' x2=' num2str(x(2)) ' x3=' num2str(x(3)) ]);


% Large system
% 2x1 + x2 + 3x3 = 1
% 2x1 + 6x2 + 8x3 = 3
% 6x1 + 8x2 + 18x3 = 5
% Exact solutions: x1 = 3/10, x2 = 2/5, x3 = 0
A = [1 1 3; 2 6 8; 6 8 18;]; b = [1; 3; 5];
x = mldivide(A,b);

disp ('--Large Sytem w/ mldivide --');
disp ('   x1 + x2 + x3 = 6, x1 - x2 + x3 = 2, 2x1 + x2 + x3 = 7');
disp ('   Exact solutions x1=1, x2=2, x3=3');
disp (['   Solver solutions x1=' num2str(x(1)) ' x2=' num2str(x(2)) ' x3=' num2str(x(3)) ]);
