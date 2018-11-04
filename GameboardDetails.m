%% Initializing GBoard variables
load WeaponsFoodIni.mat;
figure('WindowStyle', 'modal'); 
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
% test with default NPC NEEDS A CHECKER
defaultNPC = imread('All_Sprites_PNG\default_mon.png');
Gboard = placeNPC(Gboard,defaultNPC, 10);
%% Checks if Player is in finalbloc
 finalbloc = imread('All_Sprites_PNG\no_texture.png');
Gboard{1,15} = finalbloc;
end
loadGB(Gboard);