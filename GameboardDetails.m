%% Initializing GBoard
figure('WindowStyle', 'modal'); 
% Creates the board
grass = imread('All_Sprites_PNG\grass_texture.png');
Gboard = cell(10,15);
for r = 1 :10
    for c = 1:15
    Gboard{r,c} = grass;
    end
end
% Creates the Mboard
Mboard = zeros(10,15);
if level >= 1
%% Place Player
    Gboard{10, 1} = player;
    Mboard(10,1) = playerID;
    
%% Place NPC's
[Mboard, Gboard] = drop(npcID, itemNPCPic,npcFreq, Mboard, Gboard)
%% Place Foods and Weapons
% test with default
% if level ==1 
%        itemW = itemListW1
%        itemF=  itemListF1
% elseif level == 2
%        itemW= itemListW2
%        itemF= itemListF2
% elseif level == 3
%        itemW= itemListW3
%        itemF=  itemListF3
% end
[Mboard, Gboard] = drop(itemWID, itemWPic,genericFreq, Mboard, Gboard)
[Mboard, Gboard] = drop(itemFID, itemFPic,genericFreq, Mboard, Gboard)
%% Place finalbloc
%(itemName, row, col, board)
finalbloc = imread('All_Sprites_PNG\no_texture.png');
Gboard{1,15} = finalbloc;
Mboard = InputMBoard('finalbloc', 1, 15, Mboard);
end
loadGB(Gboard);
PlayerMovement