clc;

clear;

close all;
% the 'clc' command deletes the command window when we press the execute key.
% the 'clear' command deletes the workspace field when we press the execute key.
% the 'close all' command closes the graphics tabs that were previously open when we pressed the execute key.


x = intSimpsons(@keskin19,1,3);
% In the equation I defined in the intSimpsons file,
% I entered the value a as 1, the value b as 3, 
% and defined the resulting value as the variable x.

y = intSimpsons(@keskin19,3,5);
% In the equation I defined in the intSimpsons file,
% I entered the value a as 3, the value b as 5, 
% and defined the resulting value as the variable y.

z = intSimpsons(@keskin19,5,7);
% In the equation I defined in the intSimpsons file,
% I entered the value a as 5, the value b as 7, 
% and defined the resulting value as the variable z.

v = intSimpsons(@keskin19,7,9);
% In the equation I defined in the intSimpsons file,
% I entered the value a as 7, the value b as 9, 
% and defined the resulting value as the variable v.


integralx = integral(@keskin19,1,3);
% i took the integral of the value of x with the integral command,
% and defined this variable as integralx
integraly = integral(@keskin19,3,5);
% i took the integral of the value of  with the integral command,
% and defined this variable as integraly
integralz = integral(@keskin19,5,7);
% i took the integral of the value of z with the integral command,
% and defined this variable as integralz
integralv = integral(@keskin19,7,9);
% i took the integral of the value of v with the integral command,
% and defined this variable as integralv

randfora = 1 + (3-1) * rand(1);
% i used the rand function to assign a random number between 1 and 3
% for the value of a and defined this variable as randfora

randforb = 7 + (9-7) * rand(1);
% i used the rand function to assign a random number between 7 and 9
% for the value of b and defined this variable as randforb

[estIntfirst, intervalsfirst] = adapSimpsons(@keskin19, randfora, randforb, 0.00001);

[estIntsecond, intervalssecond] = adapSimpsons(@keskin19, randfora, randforb, 0.005);

[estIntthird, intervalsthird] = adapSimpsons(@keskin19, randfora, randforb, 0.09);
% in the function, I took the values a and b as randomly selected values a and b,
% and by entering 3 different tolerance values, I got 3 different values

integralS = integral(@keskin19, randfora, randforb);
% i used my integral command here to find the integral 
% of the random assigned number a and the random assigned number b

len1 = length(intervalsfirst);
% here I printed the number of elements in the column numbers
% of intervalfirst with the length command
col1 = intervalsfirst(:,1);
col2 = intervalsfirst(:,2);
% here I have separated the intervalfirst columns

len2 = length(intervalssecond);
% here I printed the number of elements in the column numbers
% of intervalsecond with the length command
col3 = intervalssecond(:,1);
col4 = intervalssecond(:,2);
% here I have separated the intervalsecond columns

len3 = length(intervalsthird);
% here I printed the number of elements in the column numbers
% of intervalthird with the length command
col5 = intervalsthird(:,1);
col6 = intervalsthird(:,2);
% here I have separated the intervalthird columns

h = 1:0.1:9;
 
subplot(3,1,1);
plot(h, keskin19(h),'LineWidth',1.5,'Color','r');
xline(col1);
title('Graph of Intervalfirst')

grid on

subplot(3,1,2);
plot(h, keskin19(h),'LineWidth',1.5,'Color','b');
xline(col3);
title('Graph of Intervalsecond')
 
grid on

subplot(3,1,3);
plot(h, keskin19(h),'LineWidth',1.5,'Color','c');
xline(col5);
title('Graph of Intervalthird')
 
grid on

% with the subplot command, we have enabled the display of 3 graphics 
% in 3 dimensions and in the same tab.
% In addition, we have printed the columns that we have separated 
% with the plot command on the graph.
% the grid on function make the background of the graph square

