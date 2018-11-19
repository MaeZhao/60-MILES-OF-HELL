function [itemPicList] = loadSprite(itemList,type, level)
% creates the sprite picture list
%   needs the names of all the items and the type (character W, F, or N)
%   of item it is
if(type == 'W')
    itemPicList = cell(1, size(itemList,2))
    for h=1:length(itemList)
        address = "All_Sprites_PNG\weapon\Weapon_"
        itemPicList{h} = imread(strcat(address,string(level),"_", string(h),".png"));
    end
    
elseif(type == 'F')
    itemPicList = cell(1, size(itemList,2))
    for h=1:length(itemList)
        address = "All_Sprites_PNG\food\Food_"
        itemPicList{h} = imread(strcat(address,string(level),"_", string(h),".png"));
    end
    
elseif(type == 'N')
    itemPicList = cell(1, size(itemList,2))
    for h=1:length(itemList)
        address = "All_Sprites_PNG\npc\npc_" %naming convention
        itemPicList{h} = imread(strcat(address,string(level),"_", string(h),".png"));
    end
end
end

