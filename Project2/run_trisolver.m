% Run script to test the tridigagonal_solver and gauss_sidel_solver

% Problem 1

% Part a

% System 1 :
% x + y = 3, 2x+y = 4
L1 = [2,2]; D1 = [1,1]; U1 = [1,1]; b1 = [3,4];
x = tridigagonal_solver(L1,D1,U1,b1);
disp ('-- System 1 --');
disp ('Exact : x=1 , y=2');
disp (['Approximates from tridigagonal_solver: x=' num2str(x(1)) ' y=' num2str(x(2)) ]);

% System 2 :
% x + y = 4, x+y+z=3, y+z=2
L2 = [1,1,0]; D2 = [1,1,1]; U2 = [0,1,1]; b2 = [4,3,2];
x = tridigagonal_solver(L2,D2,U2,b2);
disp ('-- System 2 --');
disp ('Exact : x=1, y=3, z=-1');
disp (['Approximates from tridigagonal_solver: x=' num2str(x(1)) ' y=' num2str(x(2)) ' z=' num2str(x(3))]);

% Part b
disp ('-- Larger System w/ mldivide --');
L = [1; 2; 1; 2; 1; 1]; D = [1; 2; 1; 2; 1; 1]; U = [1; 2; 1; 2; 1; 1]; b = [1; 1; 1; 1; 1; 1];
D = [D,L,U];
A = spdiags(D, [-1,0,1], numel(L), numel(L));
x = A \ b ;
disp('Solutions:');
disp (x);

% Problem 2
% System 1 :
% x + y = 3, 2x+y = 4
L1 = [2,2]; D1 = [1,1]; U1 = [1,1]; b1 = [3,4];
x = gauss_sidel_solver(L1,D1,U1,b1,1e3);
disp ('-- System 1 Guass Sidel --');
disp ('Exact : x=1 , y=2');
disp (['Approximates from tridigagonal_solver: x=' num2str(x(1)) ' y=' num2str(x(2)) ]);

% System 2 :
% x + y = 4, x+y+z=3, y+z=2
L2 = [1,1,0]; D2 = [1,1,1]; U2 = [0,1,1]; b2 = [4,3,2];
x = gauss_sidel_solver(L2,D2,U2,b2,1e3);
disp ('-- System 2 w/ Guass Sidel --');
disp ('Exact : x=1, y=3, z=-1');
disp (['Approximates from tridigagonal_solver: x=' num2str(x(1)) ' y=' num2str(x(2)) ' z=' num2str(x(3))]);
