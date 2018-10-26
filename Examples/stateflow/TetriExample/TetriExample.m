%% Tetris
%
% This model shows a re-visit of the
% <matlab:openExample('stateflow/TetriExample','supportingFile','sf_tetris.slx')
% classic tetris game> which has been shipping with Stateflow(R) to use
% some of the more modern programming paradigms and features. It shows the
% use of the |hasChanged| functional operator to query changes in the value
% of inputs, MATLAB(R) function to abstract algorithmic sub-components and
% some useful semantic abstractions such as hierarchical states and inner
% transitions.

% Copyright 2006-2018 The MathWorks, Inc.

%%

mdl = 'sf_tetris2';
open_system(mdl);

root = sfroot;
chart = find(root, '-isa', 'Stateflow.Chart', 'Name', 'TetrisLogic');
chart.visible = 0;

%%
% The Stateflow chart TetrisLogic implements the logic behind the game. The
% arena or the playing field is represented by a [21x12] array which
% represents the playing arena. The chart updates this array at each
% simulation step and only uses MATLAB to display the array as an image.
%
% The tetris game flow is represented intuitively by the sub-state
% |MainArea| which represents the current state of the playing field. The
% game starts by getting a "new shape" (or tetronimo). The piece then keeps
% moving down (or sideways) depending on user input. When the piece touches
% something from below (the |isTouching| condition), then the piece stops
% moving. If the piece has stopped too high, then the game is over.
% Otherwise, we "freeze" the shape, if necessary move to the next level,
% get a new shape and continue.
%
% Graphically abstracting the game logic at this level provides a good way
% to hide details at various levels. Each of the sub-states can hide its
% inner complexity.

chart.visible = 1;
main = chart.find('Name', 'MainArea');
main.view;

%% 
% For example, the |Moving| sub-state is responsible for moving the
% tetronimo based on the user input. Once again, we can abstract the game
% flow by using states. A tetronimo is either moving slowly or when the
% user presses the "spacebar" (which makes |hasChanged(drop)| return true),
% the tetronimo falls down fast without regard to user input.
%
% Notice the use of |hasChanged| to gather user input. Each time the user
% presses a key, the MATLAB UI increments the input to the chart, which
% makes |hasChanged| return true during that time-step.
%
% Parallel substates of |MovingSlowly| capture the fact that we want to
% process multiple user keystrokes per time step.

moving = chart.find('Name', 'Moving');
moving.view;

%% 
%
% Finally, the UI is implemented using a simple MATLAB script which also
% captures keystrokes from the user.
  
%% Key Mappings
%
% * 'j' or LEFT for moving left
% * 'l' or RIGHT for moving right
% * 'i' or UP for rotating clockwise
% * 'k' or DOWN for rotating counter clockwise
% * SPACE for dropping very fast
% * 'p' for play/pause
% * 'q' for quit
%
% The smaller square axis on the right shows the next tetronimo.

chart.visible = 0;
set_param(mdl, 'StopTime', '300');
evalc('sim(mdl)');
