function estInt = intSimpsons(f,a,b)

estInt =((b-a)/6)*(f(a)+4*f((a+b)/2)+f(b));

end
% using the function command, I defined the equation to in the...
% system of the simpsons rule given us