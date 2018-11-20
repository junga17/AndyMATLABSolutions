function [dayBtoDayA] = dayComparator(SubjectID,A,B)
%This function will return a matrix of the Subject IDs of the subjects who
%had an increase from the first to second day and second to third day. A
%represents the first day of data collection, B represents the latter
%day of collection
    comparedif = B-A;
    improve = find(comparedif>0);
    dayBtoDayA = SubjectID(improve);
end