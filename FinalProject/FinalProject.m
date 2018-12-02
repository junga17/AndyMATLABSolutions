%%Andy Jung
%%Final Project
%%10/28/18
%%This code has been created to import force plate data and calcuate the
%%XY-Area, Average Radial Area, and Average Velocity of the subject's COP.
%%A table of these values is created and exported as a .csv file to be
%%accessible through Microsoft Excel.  A graphical representation of the
%%subject's COP path is also created with a circle to display the average
%%radial area centered about the midpoint's of the total X and Y range.
%%All appropriate functions and files to run/test the program are found
%%within the same folder.
%%When testing this program take note of all files within the GITHUB folder
%%where this code was downloaded.  To compare the graphical representations
%%of trials be sure to import the proper file name within the importfile
%%function. When running this script with a different file the user will
%%want to change the title of the plot created to distinguish whether this
%%was an 'eyes open' or 'eyes closed' trial. This will also apply to the
%%assigned file names to be exported. Use of the 'test file.txt' will show
%%the functionality of the conditional statement used to check the proper
%%import length.
clear all
%%This first line of code will import force plate data. It is imported
%%as a .tsv file and each column of data will become its own vaiable within
%%the MATLAB workspace. The values being imported are the x,y, and z
%%coordinates of the subject's COP.
[XCoord,YCoord,ZCoord] = importfile('S010_EO_T0001_f_1.tsv',27, 3026);
%%Check to see how much data was imported. This script is written to
%%calculate values for a 30 second trial @ 100Hz.  If the data imported is
%%not 3000 values in length the program will display and error message. To
%%check if this is functional run the script with the 'test file.txt'.
if length(XCoord) ~= 3000 || length(XCoord) ~= 3000 || length(ZCoord) ~= 3000
    disp('You must import a file that that has collected data from a 30')
    disp('second trial with a frequency of 100Hz. Please check the file')
    disp('you have attempted to import and try running the script again')
else 
    %%Custom analysis to calculate the XY area
    [xyArea] = xyArea(XCoord,YCoord);
    %%Custom analysis to find average radial area.
    [newZeroX,newZeroY] = newZeroCoords(XCoord,YCoord);
    radialDistances = sqrt((XCoord-newZeroX).^2+(YCoord-newZeroY).^2);
    aveRadialDistance = mean(radialDistances);
    aveRadialArea = pi*(aveRadialDistance)^2;
    %%Custom analysis to find average velocity.
    [aveVelocity] = copVelocity(XCoord,YCoord);
    %%Plot. The following code creates the plot which represents the path of
    %%the subject's COP. The circle in red shows the average radial area of the
    %%COP. This is centered around the X and Y position that was calculated
    %%earlier as the mid points of the total X and Y range.
    COPPlot = plot(XCoord,YCoord); 
    hold on;
    x = newZeroX;
    y = newZeroY;
    r = aveRadialDistance;
    th = 0:pi/100:2*pi;
    a = r*cos(th)+x;
    b = r*sin(th)+y;
    %%Adding this plot creates a cirlce that shows the average radial area of
    %%the COP whose center is the new X and Y coordinates that was calculated
    %%earlier.
    COPPlot = plot(a,b);
    axis([0 16 -2 33])
    title('Eyes Open COP Movement');
    xlabel('Movement in X Direction');
    ylabel('Movement in Y Direction');
    grid('on');
    saveas(COPPlot,'Eyes Open COP Plot.png')
    %%Create a table with finalized data to be exported.
    T = table(xyArea, aveRadialArea, aveVelocity);
    %Export data to .xlsx
    writetable(T,'COP_eyes_open_results.csv')
end
