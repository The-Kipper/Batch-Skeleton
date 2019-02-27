% Batch skeleton for reading in a folder with multiple folders. Then
% looping through each folder and it's contents for specific files to do
% analysis on.

%%
mainFolder = fullfile('File Location');
topLevelFolder = uigetdir(mainFolder);

allSubFolders = genpath(topLevelFolder);
remain = allSubFolders;

listofFolderNames = {};
    [singleSubFolder,matches] = strsplit(remain, ';');
    if isempty(singleSubFolder)
        disp('There ain''t'' nothin'' in there fool!)')
    end
listofFolderNames = [listofFolderNames singleSubFolder];

numberOfFolders = length(listofFolderNames);
  

%%
for k = 1:numberOfFolders
    
    % Get current folder of k
    thisFolder = listofFolderNames{k};
    fprintf('Processing folder %s\n', thisFolder)
    
    % Load Data of CSV into a structure
    GetFile = dir([thisFolder '\*.csv']);
    
    % Get that data and read it
    Ldata = dlmread([thisFolder '\' GetFile.name] ,',' ,0, 0);

    
    % Do analysis
    
end