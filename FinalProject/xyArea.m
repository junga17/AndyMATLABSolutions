function [output1] = xyArea(A,B)
%   This function has been created to find the XY-Area from force
%   plate data.  This function will have 2 inputs, the x and y coordinates.
%   The xyArea function will return one output which is the XY-Area.  This
%   is done by multiplying the range of x-coordinates by the range of the
%   y-coordinates.  This value is then adjusted for time by dividing by the
%   amount of time that the subject was able to maintain balance.
    output1 = (range(A)*range(B))/30;
end