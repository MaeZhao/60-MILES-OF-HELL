function [PHealthPoint] = Fightscrn(NPCname, PlayerHP, NPCHP, NPCHit, inventoryW, level)
%FIGHTSCRN fight menu that gives 3 options NEEDS HP TO BE WRITTEN
%   TO BRIANNA:1. create inventoryW is the weapon inventory of the player( if
%   player touches space with weapon, inventoryW should update to contain
%   that weapon. 2. as you make inventoryW make a corresponding
%   inventoryhitW (stores the -HP damage of your weapon IN THE ORDER of
%   inventoryW)
%   1. flee
%   2. fight
%       -> and then gives list of weapon options
button{1} = ['fight'];
button{2} = ['flee'];
fightscreen = menu(strcat("A ", NPCname," approaches! What do you do?"), button{1}, button{2});
if (fightscreen == 1)
    wbutton{1} = ['use hands'];
    for i = 2: length(inventoryW)+1
        wbutton{i} = [inventoryW{i-1}]
    end
    weaponS = menu('Pick a Weapon', wbutton);
    % WE NEED TO HAVE included other levels
    if(level == 1)
        switch weaponS
            case 1
                PHealthPoint = battle(-5, NPCHit,NPCHP, PlayerHP);
            case 2
                PHealthPoint = battle(-2, NPCHit,NPCHP, PlayerHP);
            case 3
                PHealthPoint = battle(-2, NPCHit,NPCHP, PlayerHP);
            case 4
                PHealthPoint = battle(-8, NPCHit,NPCHP, PlayerHP);
            case 5
                PHealthPoint = battle(-5, NPCHit,NPCHP, PlayerHP);
        end
    end
elseif (level==2)
    switch weaponS
        case 1
            PHealthPoint = battle(-5, NPCHit,NPCHP, PlayerHP);
        case 2
            PHealthPoint = battle(-10, NPCHit,NPCHP, PlayerHP);
        case 3
            PHealthPoint = battle(-13, NPCHit,NPCHP, PlayerHP);
    end
elseif (level==3)
    switch weaponS
        case 1
            PHealthPoint = battle(-5, NPCHit,NPCHP, PlayerHP);
        case 2
            PHealthPoint = battle(-11, NPCHit,NPCHP, PlayerHP);
        case 3
            PHealthPoint = battle(-30, NPCHit,NPCHP, PlayerHP);
    end
end
    PHealthPoint = PlayerHP + randi([-5,0]);
    menu(strcat("Player HP is:", num2str(PHealthPoint)), 'OK')
end

