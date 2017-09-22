close all; clear;

f = @(z) z^3 - 1;
fp = @(z) 3*z^2;

tot = 1e-10;

cmat = [];
n = 50;

for a = -1 : (2/n) : 1

  row = [];

  for b = -1 : (2/n) : 1

    z = complex(a,b);
    zs = newtons(f, fp, z, tot);

    if (real(zs) < 0)
      c = 1;
    elseif (imag(zs) > 0)
      c = 2;
    else
      c = 3;
    end % End of if

    row = [row,c];

  end % End of b loop

  cmat = [cmat;row];

end % End of a loop

% could use for complex basins of attraction
figure(1); h = pcolor(cmat); set(h, 'EdgeColor', 'none');
