function [prow,pcol] = OutOfBounds(tprow,tpcol,oldposition1,oldposition2)

%OUTOFBOUNDS Summary of this function goes here
%   Detailed explanation goes here
if tprow >= 1 && tprow <= 10 && tpcol>=1 && tpcol <= 15
    prow = tprow;
    pcol = tpcol;
else 
    prow = oldposition1
    pcol = oldposition2
end

