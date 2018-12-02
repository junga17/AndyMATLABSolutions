function [output1] = copVelocity(A,B)
%copVelocity is used to take 2 inputs and output 1 value as the average
%velocity. A and B represent two different column vectors each are
%different coordinates. 
totalDistance = 0;
%%This for loop deterines the total distance traveled by the COP.  This
%%value will later be used to calculate the average velocity.
    for i = 2 : length(A);
        totalDistance = totalDistance + sqrt((A(i) - A(i-1))^2 + (B(i) - B(i-1))^2);
    end
%%totalDistance is divided by the amount of time of the trial which is 30
%%seconds.
output1 = totalDistance / 30;
end

