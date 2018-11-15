function [Mboard, Gboard]= moveplayer (Pposition, mboard, gboard, player, playerID)
%MOVEPLAYER moves player OR NPC's one square on map
%MUST input grass, and player (which are png files) to be able to change
%Gboard visualy
% must output Mboard and Gboard
mboard(Pposition(1), Pposition(2)) = playerID; % sum(double('player')) = PLAYERID
gboard{Pposition(1), Pposition(2)} = player;
Mboard = mboard;
Gboard = gboard;
end

