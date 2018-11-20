function [output1,output2] = newZeroCoords(A,B)
%This function take in 2 inputs that represent coordinates in the X and Y
%direction.  2 outputs represent 2 single values as new X and Y
%coordinates.  These coordinates are the center of the XY area that the COP
%has traveled.
output1 = ((max(A)-min(A))/2)+(min(A));
output2 = ((max(B)-min(B))/2)+(min(B));
end

