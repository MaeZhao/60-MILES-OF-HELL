function [itemPicList] = loadSprite(itemList,type)
%UNTITLED2 creates the sprite picture list
%   needs the names of all the items and the type (character W, F, or N) 
%   of item it is 
if(type == 'W')
    itemPicList = cell(1, size(itemList,2))
    for h=1:length(itemList)
    itemPicList{h} = imread('All_Sprites_PNG\weapon\default_weapon.png');
    end
    
elseif(type == 'F')
    itemPicList = cell(1, size(itemList,2))
    for h=1:length(itemList)
    itemPicList{h} = imread('All_Sprites_PNG\food\default_food.png');
    end
    
elseif(type == 'N')
    itemPicList = cell(1, size(itemList,2))
    for h=1:length(itemList)
    itemPicList{h} = imread('All_Sprites_PNG\npc\default_mon.png');
    end
end
end

