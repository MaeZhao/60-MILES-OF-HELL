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
[Mboard, Gboard] = drop(npcID, itemNPCPic,npcFreq, Mboard, Gboard, npcType)
%% Place Foods and Weapons
% test with default
[Mboard, Gboard] = drop(itemWID, itemWPic,genericFreq, Mboard, Gboard, genericType)
[Mboard, Gboard] = drop(itemFID, itemFPic,genericFreq, Mboard, Gboard, genericType)
%% Place finalbloc
%(itemName, row, col, board)
Mboard = InputMBoard('finalbloc', 1, 15, Mboard);
end
loadGB(Gboard);
PlayerMovement