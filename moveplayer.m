function [Mboard, Gboard]= moveplayer (Pposition, mboard, gboard, player)
%MOVEPLAYER moves player one square on map
%MUST input grass, and player (which are png files) to be able to change
%Gboard visualy
% must output Mboard and Gboard
mboard(Pposition(1), Pposition(2)) = sum(double('player')); % sum(double('player')) = PLAYERID
gboard{Pposition(1), Pposition(2)} = player;
Mboard = mboard;
Gboard = gboard;
end

