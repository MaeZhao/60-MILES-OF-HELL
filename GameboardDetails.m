%% Initializing GBoard variables
clear
clc
figure('WindowStyle', 'modal'); 
Gboard = cell(10,15);
grass = imread('All_Sprites_PNG\grass_texture.png');
for r = 1 :10
    for c = 1:15
    Gboard{r,c} = grass;
    end
end
%% Place Player
    player = imread('All_Sprites_PNG\temp_chick.png');
    Gboard{10, 1} = player;
loadGB(Gboard);
%% Place NPC's
if level = 1
    