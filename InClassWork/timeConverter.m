function [output1] = timeConverter(A,units)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    if nargin == 1
        units = ' days';
        output1 = (365*A);
        num2str(output1);
        s1 = (num2str(output1);
        output1 = strcat(s1,units);
    elseif nargin == 2 && strcmp(units,'seconds')
        day = 365*A*24*3600
end

