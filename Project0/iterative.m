function iterative

% generic iterative loop, does no math yet, you add the 
% subfunctions, initialization, and meat of iterative loop

g = 1; % generic object to make zero

cnt = 0; maxcnt = 10; tol = 10^-10; go = 1;
while(go==1)
    cnt = cnt+1;
    
    % iterative code to modify g goes here
    
    err = norm(g);
    fprintf('it=%d \t g = %f, \t err = %f\n', cnt, g, err);
    if (cnt>maxcnt || norm(g)<tol)
        go = 0;
    end
    
end

end
