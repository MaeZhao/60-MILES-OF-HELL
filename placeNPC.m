function Gboard = placeNPC(Gboard)
%PLACENPC Summary of this function goes here
%   Detailed explanation goes here
NPC = imread('All_Sprites_PNG\default_mon.png');
Gboard{5,5} = NPC;
end