function functionOutput = keskin19(x)

% The function is defined as follows:
%
%   f(x) --> a 1st order polynomial   for x = [1, 3)
%   f(x) --> a 4th order polynomial   for x = [3, 5)
%   f(x) --> a 2nd order polynomial   for x = [5, 7)
%   f(x) --> a 5th order polynomial   for x = [7, 9)
%   f(x) = 0 elsewhere


%Calculate polynomial coefficients
c1 = vander([1, 3])\[0 4]';  %1st order polynomial coefficients
c2 = vander([3 3.5 4 4.5 5])\[4 7 3 9 3]';  %4th order polynomial coefficients
c3 = vander([5 6 7])\[3 4 10]';  %2nd order polynomial coefficients
c4 = vander(linspace(7, 9, 6))\[10 2.5 4.5 3.5 5.5 0]';  %5th order polynomial coefficients

%Evaluate function within defined ranges
f1 = polyval(c1, x).*(x >= 1 & x < 3);
f2 = polyval(c2, x).*(x >= 3 & x < 5);
f3 = polyval(c3, x).*(x >= 5 & x < 7);
f4 = polyval(c4, x).*(x >= 7 & x <= 9);
felse = 0*(x < 1 | x > 9);

functionOutput = f1 + f2 + f3 + f4 + felse;

end