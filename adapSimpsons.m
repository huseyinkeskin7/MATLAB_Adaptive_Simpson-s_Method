function [estInt, intervals] = adapSimpsons(f, a, b, tol)
% i defined our equality to the system with the help of the function command

c = (a+b)/2;
% I wrote this line to find the midpoint of the a and b interval,
% and defined it as the value of c as requested in the task.

estIntMain = intSimpsons(f,a,b);
% i defined the output value according to the values of a and b as the estIntMain variable
estIntRight = intSimpsons(f,a,c);
% i defined the output value according to the values of a and c as the estIntRight variable
estIntLeft = intSimpsons(f,c,b);
% i defined the output value according to the values of c and b as the estIntLeft variable
% With these commands, we have divided the algorithm into two.

if  abs(estIntMain - estIntRight - estIntLeft) <= (15 * tol)
%     According to task, as a result of the code on the top line, the equation on the bottom line 
%     will be realized and the run will end, but if not, it will switch to the else command.
    estInt = estIntRight + estIntLeft + (1/15)*(estIntRight + estIntLeft - estIntMain);

    intervals = [a c ; c b];
% i have defined the entire space a c, c b that I divide as the intervals variable.

else
    [estIntRight, intervals1] = adapSimpsons(f,a,c,tol/2);

    [estIntLeft, intervals2] = adapSimpsons(f,c,b,tol/2);
    %   i called gap of a c and c b adaptively and assumed the tolerance value 
    %   as half of the total tolerance
    estInt = estIntRight + estIntLeft;
    
    intervals = [intervals1 ; intervals2];
    % I have divided intervals
    % in this way in order to store all the rows separately.
end
