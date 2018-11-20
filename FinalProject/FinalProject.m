%Andy Jung
%Final Project
%This is a script that can process force plate data
%10/28/18
clear all
%This first portion of script wil l import force plate data. It is imported
%as a .tsv file and each column of data will become its own vaiable within
%the MATLAB workpace.
[XCoord,YCoord,ZCoord] = importfile('S010_EO_T0001_f_1.tsv',27, 3026);
%Custom analysis to calculate the XY area
[xyArea] = xyArea(XCoord,YCoord);
%Custom analysis to find average radial area.
[newZeroX,newZeroY] = newZeroCoords(XCoord,YCoord);
radialDistances = sqrt((XCoord-newZeroX).^2+(YCoord-newZeroY).^2);
aveRadialDistance = mean(radialDistances);
aveRadialArea = pi*(aveRadialDistance)^2;
%Custom analysis to find average velocity.
[aveVelocity] = copVelocity(XCoord,YCoord);
%Plot
P = plot(XCoord,YCoord);%This plot shows the travel path of COP over the total trial
hold on;
x = newZeroX;
y = newZeroY;
r = aveRadialDistance;
th = 0:pi/100:2*pi;
a = r*cos(th)+x;
b = r*sin(th)+y;
P = plot(a,b);%Adding this plot creates a cirlce that shows the average radial area of the COP whose center is the new X and Y coordinates that was calculated earlier.
title('Center of Pressure Movement');
xlabel('Movement in X Direction');
ylabel('Movement in Y Direction');
grid('on');
saveas(Figure1,'COP Plot','jpeg')
%%%%%
T = table(xyArea, aveRadialArea, aveVelocity);
%Export data to .xlsx