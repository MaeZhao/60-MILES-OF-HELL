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
% Creates the Mboard
% help us 'see' what is on the board
% if see '0' then nothing is placed there
% if see 'm' then monster is placed there
% if see 'p' then player is placed there
% if see 'a' then apple
% if see 'b' then blueberries
% if see 'c' then cannedFood
% if see 'd' then deadBird 
% if see 't' then catTail
% if see 'f' then funnyGuy
% if see 'g' then grass
% if see 'k' then keys
% if see 'l' then metalLid
% if see 'W' then murkyWatah
% if see 'p' then phoneflash
% if see 'n' then spikeNut
% if see 's' then stick
% if see 'r' then bearSpray
% if see 'a' then scrapMetal
Mboard = zeros(10,15);
%% Place Player
if gamestart == true
    player = imread('All_Sprites_PNG\temp_chick.png');
    Gboard{10, 1} = player;
%     playerID = sum(double('player'));
    Mboard = InputMBoard('player', 10, 1, Mboard);
%% Place NPC's
% test with default NPC NEEDS A CHECKER
defaultNPC = imread('All_Sprites_PNG\default_mon.png');
[Gboard, Mboard]= placeNPC(Gboard,'NPC',defaultNPC, 10);
%% Checks if Player is in finalbloc
 finalbloc = imread('All_Sprites_PNG\no_texture.png');
Gboard{1,15} = finalbloc;
end
loadGB(Gboard);