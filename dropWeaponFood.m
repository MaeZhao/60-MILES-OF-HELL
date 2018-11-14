function [Mboard, Gboard] = drop(itemWID, itemFID,itemListW, itemListF, mboard, gboard)
% DROPS weapons and food onto mboard, and generates pictures
tempitemListW = cell(1, size(itemW,2))
for h=1:length(itemWID)
    % itemID
    tempitemListW{h} = imread('All_Sprites_PNG\default_weapon.png');
end
% temporary because we do not have individual png pictures for all food
tempitemListF = cell(1, size(itemF,2))
for n=1:length(itemFID)
    tempitemListF{n} = imread('All_Sprites_PNG\default_food.png');
end
% places weapons and food
for i=1:length(itemW)
[gboard, mboard]= place(mboard,gboard,itemWID(i),tempitemListW{i}, 1);
end
for g=1:length(itemF)
[gboard, mboard]= place(mboard,gboard,itemFID(g),tempitemListF{g}, 1);
end
Gboard = gboard;
Mboard = mboard;
end

       
