% blankInterrogator
%
%      usage: blankInterrogator()
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
function blankInterrogator(v, overlayNum, scan, x, y ,s ,roi)


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
set(fignum,'Name','blankInterrogator');

% ? get data from view 
% ? do interesting maths, model fitting, ...
% ? do plotting / visualisation

end

