function [p] = secant(f,p0, p1, tot, n0)

  % Set i, q0, and q1
  i = 2;
  q0 = f(p0);
  q1 = f(p1);

  while i <= n0
    % Calculate p
    p = p1 − q1( p1 − p0 ) / (q1 − q0);
    % Check for converages
    if abs( p - p1 ) < tot
      return p;
    end

    % Increment i and check it's larger than n0
    i = i+1;
    if its == n0
      error('Max iterations');
    end

    % Update p0,q0,p1,p0
    p0 = p1;
    q0 = q1;
    p1 = p;
    q1 = f(p);

    % Disp values
    disp( ['---Iteration ' num2str(i) ' ---']);
    disp(['p=' num2str(p) ' p0 = ' num2str(p0) ' p1 = ' num2str(p1) ]);
    disp(['q0=' num2str(q0) ' q1 = ' num2str(q1) ]);

  end % End of while

end % End of function secant
