%% data-view examples
%
% https://nottingham-neuroimaging.github.io/intro-to-mrtools/
%
% ds 2020-07

%% Example 1
% check that workspace is empty
% should return nothing
whos

% open a mrLoadRet window and capture
% the resulting view strcut in `v`
v = mrLoadRet()

% check what overlays are available and
% what they are called

overlayNames = viewGet(v,'overlaynames')
% a cell array with the names

% and the actual overlay data
overlays = viewGet(v,'overlays')
% a struct array with all the data for those overlays!

% e.g. visualise overlay data from 
% overlay 1
figure()
curScan = viewGet(v,'currentscan')
montage( permute(overlays(1).data{curScan}, [1 2 4 3])); % data needs to be x-by-y-by-1-by-z
colormap( overlays(1).colormap)
caxis( overlays(1).colorRange)
title([overlays(1).function, ', map: ', overlays(1).name])

%% Example 2 
%
% if you have a mrLoadRet window open and want to get the view
 
% get the numbers for all active views
vnum = viewGet([], 'viewnums')

% use the first of these numbers
% (usually with the value 1) to get 
% the view itself
v = viewGet([], 'view', vnum)

% now continue as before as outlined in Example 1


%% Example 3
%
% Starting out with a non-interactive ("blank") `view` 



