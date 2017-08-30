% input: 'filename' character string, dimension integer
% output: n x n real matrix filled from file 

function t = readmat(fn, n)

fid     = fopen(fn,'r');
t       = fscanf(fid,'%g',[n n]);
status  = fclose(fid);