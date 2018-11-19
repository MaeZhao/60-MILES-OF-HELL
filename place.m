function [Gboard, Mboard] = place(mboard, gboard, ItemID, ItemPic, Itemfreq, npcType)%change itemName to ItemID
%   placeITEM places the NPC/items randomly
%   WE NEED A CHECKER THAT MAKES SURE THAT NO ONE SPOT IS OVERLOADED

for i = 1: Itemfreq %WE NEED A CHECKER TO CHECK FOR OVERLAP
    if(npcType(i) == "boss")
        gboard{1,15}= ItemPic;
        mboard(1,15) = ItemID;
    else
        nrow = randi([1 10]);
        ncol = randi([1 15]);
        while (mboard(nrow, ncol) ~= 0)
            nrow = randi([1 10]);
            ncol = randi([1 15]);
        end
        gboard{nrow,ncol}= ItemPic;
        mboard(nrow,ncol) = ItemID;
    end
end

Mboard = mboard;
Gboard = gboard;
end
