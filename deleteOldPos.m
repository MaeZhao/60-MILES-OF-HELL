function [Mboard, Gboard]=deleteOldPos(oldPosition, mboard, gboard, grass)
% Deletes old position of items/players
mboard(oldPosition(1),oldPosition(2))= 0;
gboard{oldPosition(1), oldPosition(2)} = grass;
Mboard = mboard;
Gboard = gboard;
end
