function [ xn ] = nm_rec( f, fp, x, tot)
% function: Netwons method for finding zero values given f, f',
% x and tollerance thershold. It recurisivly calls itself on the
% new x until the stoping critera or base-case are met.
%
% Author: Christopher D. Whitney (cw729@nau.edu)
% Date: Aug 29th, 2017

  chi = f(x)/fp(x); % Netwons direction variable
  xn = x - chi; % Newtons method

  % Disp values
  disp(['chi=' num2str(chi) ' xn = ' num2str(xn)]);

  % If stopping critera not met, recurisivly call nm_rec on xn
  if xn > 0 && abs(chi) > tot
    nm_rec(f,fp,xn,tot);
  else
    return;

end  % function
