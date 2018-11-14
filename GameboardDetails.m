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
player = imread('All_Sprites_PNG\temp_chick.png');
    Gboard{10, 1} = player;
    %playerID = sum(double('player'));
    Mboard = InputMBoard('player', 10, 1, Mboard);
    
%% Place NPC's
% Things TODO:
% 1. make NPC look like 'PlaceFood and Weapons'
% (mboard, gboard, NPCname, NPCtype, npcFreq)
[Mboard, Gboard] = drop(npcID, npcList, Mboard, Gboard)
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
[Mboard, Gboard] = drop(itemWID, itemListW, Mboard, Gboard)
[Mboard, Gboard] = drop(itemFID, itemListF, Mboard, Gboard)
%% Place finalbloc
%(itemName, row, col, board)
finalbloc = imread('All_Sprites_PNG\no_texture.png');
Gboard{1,15} = finalbloc;
Mboard = InputMBoard('finalbloc', 1, 15, Mboard);
end
loadGB(Gboard);
PlayerMovement