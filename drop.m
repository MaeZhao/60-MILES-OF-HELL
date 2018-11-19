function [Mboard, Gboard] = drop(itemID,itemPics, itemFreq,mboard, gboard, npcType)%itemList needed to generate pictures
% DROPS weapons and NPC's randomly onto mboard, and generates pictures
% places weapons and food
for i=1:length(itemID)
[gboard, mboard]= place(mboard,gboard,itemID(i),itemPics{i}, itemFreq(i), npcType(i));
end

Gboard = gboard;
Mboard = mboard;
end

       
