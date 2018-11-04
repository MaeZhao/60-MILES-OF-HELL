function [Gboard, Mboard] = placeNPC(mboard, gboard NPCname, NPCtype, npcFreq)
%PLACENPC places the NPC randomly
%   WE NEED A CHECKER THAT MAKES SURE THAT NO ONE SPOT IS OVERLOADED
while npcFreq > 0 %WE NEED A CHECKER TO CHECK FOR OVERLAP
    nrow = randi([1 10]);
    ncol = randi([1 15]);
    gboard{nrow,ncol} = NPCtype;
    npcFreq = npcFreq-1;
end
Mboard = InputMBoard(NPCname, nrow, ncol, mboard);
Gboard = gboard1;
end