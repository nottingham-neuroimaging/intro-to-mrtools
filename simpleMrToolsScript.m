%% simple script
%
% ds 2020-07 for intro-to-mrtools

%% make sure you have a clean workspace
% whos
% close all, clear all

%% get a new view (a blank slate)

v = newView() 
curScan = viewGet(v, 'curscan');
curGroup = viewGet(v, 'curgroup');
groupNames = viewGet(v, 'groupnames');

fprintf(1, 'curScan=%d, curGroup=%d (which is: %s)\n', ...
    curScan, curGroup, groupNames{curGroup})

%% now change the state of v
%
% but GOTCHA..need to make sure we keep the *updated* v!
%
% so the pattern is
v = viewSet(v, 'curGroup', 2); % change the current group

% now check that worked
curGroup = viewGet(v, 'curgroup');
fprintf(1, 'NOW: curScan=%d, curGroup=%d (which is: %s)\n', ...
    curScan, curGroup, groupNames{curGroup})


%% Important point:
viewSet(v, 'curscan',2)
% no error, but does nothing, as v in workspace is not updated!!

% this will work.
v = viewGet(v, 'curscan',2);



%% scripting a correlation analysis

% help corAnal % for some more details

% scans 1 and 2 were block design experiments
% 12s STIM on, 12s off 
% (and each of those alterating between "faces" and "houses"
% from Readme.md file... 160 dynamics, 16 TRs = 24s per cycle
% so 10 cycles per scan for STIM on / off
%     5 cycles per scan for Faces v Houses ... 
%       (although not perfect design)

params = struct();
params.groupName = 'MotionComp';
params.recompute = [1, 1, 0];
params.ncycles = [10, 10, 0];
params.detrend = {'Highpass', 'Highpass', 'None'}; % last scan not used here
params.spatialnorm = {'Divide by mean','Divide by mean', 'None' };
params.tseriesfile = 'any'; % so we don't have to be explicit

v = corAnal(v, params);



