function [PHealthPoint] = Fightscrn(NPCname, PlayerHP, NPCHP, NPCHit, inventoryW, level,...
    npcList,itemListW, itemWhit, npcHP,npcATk)
%FIGHTSCRN fight menu that gives 3 options NEEDS HP TO BE WRITTEN
%   TO BRIANNA:1. create inventoryW is the weapon inventory of the player( if
%   player touches space with weapon, inventoryW should update to contain
%   that weapon. 2. as you make inventoryW make a corresponding
%   inventoryhitW (stores the -HP damage of your weapon IN THE ORDER of
%   inventoryW)
%   1. flee
%   2. fight
%       -> and then gives list of weapon options
weap = "nothing"
button{1} = ['fight'];
button{2} = ['flee'];
fightscreen = menu(strcat("A ", NPCname," approaches! It has ",...
    num2str(npcHP(npcList==NPCname))," HP and has a hit point of ", num2str(npcATk(npcList==NPCname)),...
    " HP per hit turn. What do you do?"), button{1}, button{2});
if (fightscreen == 1)
    wbutton{1} = ["use hands: -5 HP"]
    for i = 2: length(inventoryW)+1
        if(inventoryW{i-1}~=itemListW{i-1})
            wbutton{i} = [inventoryW{i-1}]
        else
            in = i-1
            wbutton{i} = [strcat(inventoryW{in}, ": ",num2str(itemWhit(double(in))), " HP")]
        end
    end
    weaponS = menu('Pick a Weapon. PLEASE DO NOT SELECT EMPTY BUTTONS', wbutton);
    % WE NEED TO HAVE included other levels
    if(level == 1)
        switch weaponS
            case 1
                weap = "hands"
                PHealthPoint = battle(-5, NPCHit,NPCHP, PlayerHP);
            case 2
                weap = inventoryW{1}
                if(inventoryW{1} == " ")
                    PHealthPoint = battle(-100, NPCHit,NPCHP, PlayerHP);
                else
                    PHealthPoint = battle(-2, NPCHit,NPCHP, PlayerHP);
                end
            case 3
                weap = inventoryW{2}
                if(inventoryW{2} == " ")
                    PHealthPoint = battle(-100, NPCHit,NPCHP, PlayerHP);
                else
                    PHealthPoint = battle(-2, NPCHit,NPCHP, PlayerHP);
                end
            case 4
                weap = inventoryW{3}
                if(inventoryW{3} == " ")
                   PHealthPoint = battle(-100, NPCHit,NPCHP, PlayerHP);
                else
                PHealthPoint = battle(-8, NPCHit,NPCHP, PlayerHP);
                end
            case 5
                weap = inventoryW{4}
                if(inventoryW{4} == " ")
                   PHealthPoint = battle(-100, NPCHit,NPCHP, PlayerHP);
                else
                PHealthPoint = battle(-5, NPCHit,NPCHP, PlayerHP);
                end
        end
    end
% elseif (level==2)
%     switch weaponS
%         case 1
%             PHealthPoint = battle(-5, NPCHit,NPCHP, PlayerHP);
%         case 2
%             PHealthPoint = battle(-10, NPCHit,NPCHP, PlayerHP);
%         case 3
%             PHealthPoint = battle(-13, NPCHit,NPCHP, PlayerHP);
%     end
% elseif (level==3)
%     switch weaponS
%         case 1
%             PHealthPoint = battle(-5, NPCHit,NPCHP, PlayerHP);
%         case 2
%             PHealthPoint = battle(-11, NPCHit,NPCHP, PlayerHP);
%         case 3
%             PHealthPoint = battle(-30, NPCHit,NPCHP, PlayerHP);
%     end
end
if( weap == "nothing")
    PHealthPoint = PlayerHP + randi([-5,0]);
    menu(strcat("You fled. Player HP is: ", num2str(PHealthPoint)), 'OK')
else
    menu(strcat("You attacked with ", weap, ". Player HP is: ", num2str(PHealthPoint)), 'OK')
end

