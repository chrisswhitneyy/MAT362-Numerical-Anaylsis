function [p] = bisection(f,a, b, tot, n0)

  i = 1;
  fa = f(a); % Compute intial fa
  disp( 'p' );
  while i <= n0
    p = a + (b-a)/2; % Compute new p
    fp = f(p); % Compute fp

    % Check for converages cretiera
    if fp == 0 || (b-a)/2 < tot
      break;
    end % End of if

    i = i + 1; % Increment i

    % Decide how to adjust new bounds
    if fa*fp  > 0
      a = p;
      fa = fp;
    else
      b = p;
    end % End of if

    % Disp valuesdisp( ['---Iteration ' num2str(i) ' ---']);
    disp( num2str(p) )
    fflush(stdout); % Octave specfic command to flush the output

  end % End of while

  if n0 == i
    error(['Method failed after n0(' num2str(n0) ') iterations ']);
  end

end % End of function
