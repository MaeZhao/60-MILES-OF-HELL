function [Mboard, Gboard] = dropitems(itemW, itemF, mboard, gboard)
% DROPS weapons and food onto mboard
tempitemListW = cell(1, size(itemW,2))
for h=1:length(itemW)
    % itemID
    tempitemListW{h} = imread('All_Sprites_PNG\default_weapon.png');
end
% temporary because we do not have individual png pictures for all food
tempitemListF = cell(1, size(itemF,2))
for n=1:length(itemF)
    tempitemListF{n} = imread('All_Sprites_PNG\default_food.png');
end
for i=1:length(itemW)
[gboard, mboard]= placeItem(mboard,gboard,itemW(i),tempitemListW{i}, 1);
end
for g=1:length(itemF)
[gboard, mboard]= placeItem(mboard,gboard,itemF(g),tempitemListF{g}, 1);
end
Gboard = gboard;
Mboard = mboard;
end

       
