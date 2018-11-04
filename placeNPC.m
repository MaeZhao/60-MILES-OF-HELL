function [Gboard, Mboard] = placeNPC(mboard, gboard, NPCname, NPCtype, npcFreq)
%PLACENPC places the NPC randomly
%   WE NEED A CHECKER THAT MAKES SURE THAT NO ONE SPOT IS OVERLOADED
for i = 1: npcFreq %WE NEED A CHECKER TO CHECK FOR OVERLAP
    nrow = randi([1 10]);
    ncol = randi([1 15]);
    gboard{nrow,ncol} = NPCtype;
    mboard = InputMBoard(NPCname, nrow, ncol, mboard);
end
Mboard = mboard;
Gboard = gboard;
end