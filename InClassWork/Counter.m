function [] = Counter(A,B)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
if (B>A)
    disp(A)
    count = B-A;
else
    disp(B)
    count = A-B;
end
for i = 1:count
    A=(A+1);
    disp(A)
end  
end

