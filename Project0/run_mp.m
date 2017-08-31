n1 = 10;
n2 = 20;
n3 = 40;
n4 = 80;
n5 = 160;

a = 0; b = 1;

f = @(x) (x.^2);

g = @(x) (x.^4);

disp('--- Project0 Remian Sum ---');
disp(' Where, ')
disp(' f(x) = x^2 ,  g(x) = x^4');
disp(' f(x) and g(x) intergrate over 0 to 1');
disp([' n = ' num2str(n1) ',' num2str(n2) ',' num2str(n3)]);
disp(['     ' num2str(n4) ',' num2str(n5) ]);
disp('--');
disp(['n=' num2str(n1) ' with f(x)']);
s = mp(n1,a,b,f);
disp('--');
disp(['n=' num2str(n2) ' with f(x)']);
s = mp(n2,a,b,f);
disp('--');
disp(['n=' num2str(n3) ' with f(x)']);
s = mp(n3,a,b,f);
disp('--');
disp(['n=' num2str(n4) ' with f(x)']);
s = mp(n4,a,b,f);
disp('--');
disp(['n=' num2str(n5) ' with f(x)']);
s = mp(n5,a,b,f);
disp('--');
disp(['n=' num2str(n1) ' with g(x)']);
s = mp(n1,a,b,g);
disp('--');
disp(['n=' num2str(n2) ' with g(x)']);
s = mp(n2,a,b,g);
disp('--');
disp(['n=' num2str(n3) ' with g(x)']);
s = mp(n3,a,b,g);
disp('--');
disp(['n=' num2str(n4) ' with g(x)']);
s = mp(n4,a,b,g);
disp('--');
disp(['n=' num2str(n5) ' with g(x)']);
s = mp(n5,a,b,g);
