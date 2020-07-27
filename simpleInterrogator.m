% simpleInterrogator
%
%      usage: simpleInterrogator()
%         by: ds / based on code by justin gardner
%       date: 2007, 2020
%    purpose: a blank interrogator function that shows
%             function interface
%
%         in: % NB input arguments are "fulfilled" when
%             % clicked inside mrLoadRet window.
%
%             v (view)
%             overlayNum
%             scan
%             x,y,s (coordinates)
%             roi (empty, 
%                  or ROI details if clicked inside ROI)
% 
function simpleInterrogator(v, overlayNum, scan, x, y ,s ,roi)


% check arguments
if ~any(nargin == [1:7])
  help blankInterrogator
  return
end

% select the window to plot into
selectGraphWin;
global MLR;
fignum = MLR.graphFigure;

% turn off menu/title etc.
set(fignum,'NumberTitle','off');
set(fignum,'Name','simpleInterrogator');

% ? get data from view 
% ? do interesting maths, model fitting, ...
% ? do plotting / visualisation

% display some of the input arguments
fprintf(1, 'user clicked at %d, %d, %d\n',x,y,s); 

% display something in the graph window
% plot(rand(100,1));

% plot the timecourse from the location where we clicked...
% tSeries = loadTSeries(view,[scan],[slice],[frame],[x],[y],[precision], [groupNum])
tSeries = squeeze( loadTSeries(v, scan, s, [], x, y) );
plot(tSeries, 'k', 'linewidth',2);
xlabel('Time (volumes)')
ylabel('MR signal (image intensity)')
title(sprintf('coord: %d, %d, %d',x,y,s));


end

