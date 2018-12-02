function [figure] = plotTwoVectors(A,B)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    figure = plot(A)
    hold on
    figure = plot(B)
    title(input('Type the title', 's'));
    xlabel('This is my x label')
    ylabel('This is my y label')
     
end


