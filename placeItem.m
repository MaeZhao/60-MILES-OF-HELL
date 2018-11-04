function [Gboard, Mboard] = placeItem(mboard, gboard, Itemname, Itemtype, Itemfreq)
%PLACENPC places the NPC randomly
%   WE NEED A CHECKER THAT MAKES SURE THAT NO ONE SPOT IS OVERLOADED
for i = 1: Itemfreq %WE NEED A CHECKER TO CHECK FOR OVERLAP
    nrow = randi([1 10]);
    ncol = randi([1 15]);
    while (mboard(nrow, ncol) ~= 0)
        nrow = randi([1 10]);
        ncol = randi([1 15]);
    end
    gboard{nrow,ncol} = Itemtype;
    mboard = InputMBoard(Itemname, nrow, ncol, mboard);
end
Mboard = mboard;
Gboard = gboard;
end