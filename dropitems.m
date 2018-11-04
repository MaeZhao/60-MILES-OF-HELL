function [Mboard, Gboard] = dropitems(level, itemW, itemF, Mboard)
if level ==1 
          itemListW = itemListW1
          itemListF=  itemListF1
elseif level == 2
        itemListW= itemListW2
        itemListF= itemListF2
elseif level == 3
       itemListW= itemListW3
       itemListF=  itemListF3
end

% temporary because we do not have individual png pictures for all items
tempItemListW = itemListW;
for h=1:size(itemListW)
    tempitemListW(h) = imread('\All_Sprites_PNG\no_texture.png');
end
% temporary because we do not have individual png pictures for all food
tempItemListF = itemListF;
for i=1:size(itemListF)
    tempitemListF(i) = imread('\All_Sprites_PNG\no_texture.png');
end

for i=1:size(itemListW)

drow = randi(100)
dcol = randi(100)
Mboard(drow, dcol) = itemListW(i)
Gboard = tempitemListW(i)


for i=1:size(itemListF)
drow = randi(1,100)
dcol = randi(1,100)
Mboard(drow,dcol) = itemListF(i)
Gboard = tempitemListF(i)
end
end

end

       
