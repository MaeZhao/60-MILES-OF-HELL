%% Initializing GBoard variables
clear
clc
load WeaponsFoodIni.mat;
figure('WindowStyle', 'modal'); 
gamestart = true;
level = 1;
% Creates the board
grass = imread('All_Sprites_PNG\grass_texture.png');
Gboard = cell(10,15);
for r = 1 :10
    for c = 1:15
    Gboard{r,c} = grass;
    end
end
%% Place Player
if gamestart == true
    player = imread('All_Sprites_PNG\temp_chick.png');
    Gboard{10, 1} = player;
%% Place NPC's

Gboard = placeNPC(Gboard)
end

loadGB(Gboard);