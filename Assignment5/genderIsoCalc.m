function [maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean] = genderIsoCalc(Age,Day1,Day2,Day3,Gender,SubjectID,Weight)
%This function will take the data that has been imported from the spread
%sheet and return 4 outputs. The first two outputs are the indivdual
%isometric stregnth means based on gender, and the second two outputs are
%the group means for each gender.
    male = Gender == {'M'};
    findmale = find(male);
    maleIsoIndMeans = (Day1(findmale)+Day2(findmale)+Day3(findmale))/3;
    female = Gender == {'F'};
    findfemale = find(female);
    femaleIsoIndMeans = (Day1(findfemale)+Day2(findfemale)+Day3(findfemale))/3;
    maleGroupIsoMean = mean(maleIsoIndMeans);
    femaleGroupIsoMean = mean(femaleIsoIndMeans);
end

