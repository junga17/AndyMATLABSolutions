function [output1] = copVelocity(A,B)
%copVelocity is used to take 2 inputs and output 1 value as the average
%velocity. A and B represent two different column vectors each are
%different coordinates. 
totalDistance = 0;
for i = 2 : length(A);%This For loop determines the total distance that the COP has traveled.  This value will be used to calculate the average velocity.
    totalDistance = totalDistance + sqrt((A(i) - A(i-1))^2 + (B(i) - B(i-1))^2);
end
output1 = totalDistance / 30;%totalDistance is divided by the amount of time of the trial which is 30 seconds
end

