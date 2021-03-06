function [XCoord,YCoord,ZCoord] = importfile(filename, startRow, endRow)
%IMPORTFILE1 Import numeric data from a text file as column vectors.
%   [XCOORD,YCOORD,ZCOORD] = IMPORTFILE1(FILENAME) Reads data from text
%   file FILENAME for the default selection.
%
%   [XCOORD,YCOORD,ZCOORD] = IMPORTFILE1(FILENAME, STARTROW, ENDROW) Reads
%   data from rows STARTROW through ENDROW of text file FILENAME.
%
% Example:
%   [XCoord,YCoord,ZCoord] = importfile1('S010_EO_T0001_f_1.tsv',27, 3026);
%
%    See also TEXTSCAN.

% Auto-generated by MATLAB on 2018/10/29 12:08:28

%% Initialize variables.
delimiter = '\t';
if nargin<=2
    startRow = 27;
    endRow = inf;
end

%% Format for each line of text:
%   column4: double (%f)
%	column5: double (%f)
%   column6: double (%f)
% For more information, see the TEXTSCAN documentation.
formatSpec = '%*q%*q%*q%f%f%f%*s%*s%*s%[^\n\r]';

%% Open the text file.
fileID = fopen(filename,'r');

%% Read columns of data according to the format.
% This call is based on the structure of the file used to generate this
% code. If an error occurs for a different file, try regenerating the code
% from the Import Tool.
dataArray = textscan(fileID, formatSpec, endRow(1)-startRow(1)+1, 'Delimiter', delimiter, 'TextType', 'string', 'EmptyValue', NaN, 'HeaderLines', startRow(1)-1, 'ReturnOnError', false, 'EndOfLine', '\r\n');
for block=2:length(startRow)
    frewind(fileID);
    dataArrayBlock = textscan(fileID, formatSpec, endRow(block)-startRow(block)+1, 'Delimiter', delimiter, 'TextType', 'string', 'EmptyValue', NaN, 'HeaderLines', startRow(block)-1, 'ReturnOnError', false, 'EndOfLine', '\r\n');
    for col=1:length(dataArray)
        dataArray{col} = [dataArray{col};dataArrayBlock{col}];
    end
end

%% Close the text file.
fclose(fileID);

%% Post processing for unimportable data.
% No unimportable data rules were applied during the import, so no post
% processing code is included. To generate code which works for
% unimportable data, select unimportable cells in a file and regenerate the
% script.

%% Allocate imported array to column variable names
XCoord = dataArray{:, 1};
YCoord = dataArray{:, 2};
ZCoord = dataArray{:, 3};




