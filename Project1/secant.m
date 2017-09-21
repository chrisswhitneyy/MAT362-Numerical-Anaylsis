function [p] = secant(f,p0, p1, tot, n0)

  % Set i, q0, and q1
  i = 2;
  q0 = f(p0);
  q1 = f(p1);
  disp('secant p');
  while i <= n0
    % Calculate p
    p = p1 - q1 * [ ( p1 - p0 ) / (q1 - q0) ];

    % Check for converages
    if abs( p - p1 ) < tot
      break;
    end

    % Increment i and check it's larger than n0
    i = i+1;
    if i == n0
      error('Max iterations');
    end

    % Update p0,q0,p1,p0
    p0 = p1;
    q0 = q1;
    p1 = p;
    q1 = f(p);

    % Disp values
    disp( num2str(p) );
    fflush(stdout); % Octave specfic command to flush the output

  end % End of while

end % End of function secant
