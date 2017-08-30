function [ xn ] = nm_seq( f, fp, x, tot )
% function: Netwons method for finding zero values given f, f',
% x and tollerance thershold. It loops until the stopping critera
% are met.
%
% Author: Christopher D. Whitney (cw729@nau.edu)
% Date: Aug 29th, 2017

  % First iteration of the method with the intial guess
  chi = f(x)/fp(x);
  xn = x - chi;

  disp(['chi=' num2str(chi) ' xn = ' num2str(xn)]);

  % Loop until stoping critera are met
  while (xn > 0 && abs(chi) > tot)

    % Re-calculate chi and xn
    chi = f(xn)/fp(xn);
    xn = xn - chi;

    disp(['chi=' num2str(chi) ' xn = ' num2str(xn)]);

  end


end  % function
