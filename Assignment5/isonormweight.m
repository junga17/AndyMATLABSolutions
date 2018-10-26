function [normDayAmean] = isonormweight(A,B)
%UNTITLED2 Summary of this function goes here
%   This function can be used to normalize isometric stregnth data on any
%   given day that has been previously collected. A represents the strength
%   data collected on a given day and B represents the weight.
    normDayAmean = mean(A./B);
end

