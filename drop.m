function [Mboard, Gboard] = drop(itemID ,itemListW, mboard, gboard)%itemListW needed to generate pictures
% DROPS weapons and NPC's onto mboard, and generates pictures
% places weapons and food
for i=1:length(itemW)
[gboard, mboard]= place(mboard,gboard,itemWID(i),tempitemList{i}, 1);
end
Gboard = gboard;
Mboard = mboard;
end

       
