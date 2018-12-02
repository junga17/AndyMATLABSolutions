function [output1,output2] = newZeroCoords(A,B)
%%This function take 2 inputs which represent the X and Y coordinates.
%%The 2 outputs represent the X and Y coordinates that will be used as the
%%center of the area that the subject's COP has traveled.
output1 = ((max(A)-min(A))/2)+(min(A));
output2 = ((max(B)-min(B))/2)+(min(B));
end
