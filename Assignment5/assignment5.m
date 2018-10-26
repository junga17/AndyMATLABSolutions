%Andy Jung
%10/17/2018
%Assignment 5
%%The importfile function will import all of the data from the supplied
%%spreadsheet and uses the separate column headers as variable names
[SubjectID,Age,Gender,Weight,Day1,Day2,Day3] = importfile('isok_data_6803.csv', 2, 26)
%%The genderIsoCalc function in this next line is used to calculate
%%individual means of Isometric strength as well as gender means. These
%%values are not normalized to any other variables.
[maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean] = genderIsoCalc(Age,Day1,Day2,Day3,Gender,SubjectID,Weight)
%%The dayComparator function is called twice to output the SubjectID's of
%%the subjects that improved from Day1 to Day2 and Day2 to Day3.
[day1toDay2] = dayComparator(SubjectID,Day1,Day2)
[day2toDay3] = dayComparator(SubjectID,Day2,Day3)
%%The isonormweight function is called to weight nomrmalize
%%the data.
[normDay1mean] = isonormweight(Day1, Weight)
[normDay2mean] = isonormweight(Day2, Weight)
[normDay3mean] = isonormweight(Day3, Weight)
%%The next 6 lines of code make the dimensions of all variables homogeneous
%%by filling in the extra rows with NaN.
femaleIsoIndMeans(13,:) = nan;
maleGroupIsoMean(2:13,:) = nan;
femaleGroupIsoMean(2:13,:) = nan;
day1toDay2(13,:) = nan;
day2toDay3(12:13,:) = nan;
normDay1mean(2:13,:) = nan;
normDay2mean(2:13,:) = nan;
normDay3mean(2:13,:) = nan;
%%Now that all variables have the same dimensions, a table is created by
%%calling the table function and uses the variable names as column headers
%%in the table.
T = table(maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean, day1toDay2, day2toDay3, normDay1mean, normDay2mean, normDay3mean)
%%A file called 'iso_results' is exported in .csv format in the current
%%folder that MATLAB is working in.
writetable(T,'iso_results.csv')


