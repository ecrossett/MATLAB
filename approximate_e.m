function [e, kmax] = approximate_e(delta)
% This function approximates the value of e using user input for
% tolerance threshold, delta, as compared to MATLAB exp(1).
%
% Output is the approximate value of e and the max k value needed to 
% get within desired tolerance where:
% e = sum from k = 0 to kmax (1 / k!)

k = 0;
e = 1;
factorial = 1;

while abs((e - exp(1))) > delta
    factorial = factorial * (k + 1);
    e = e + 1/factorial;
    k = k + 1;
end
kmax = k;
