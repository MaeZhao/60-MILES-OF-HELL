function [PHealthPoint] = Fightscrn(NPCname, PlayerHP, NPCHP, NPCHit, inventoryW, level)
%FIGHTSCRN fight menu that gives 3 options NEEDS HP TO BE WRITTEN
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
                PHealthPoint = Battle(-5, NPCHit,NPCHP, PlayerHP);
            case 2
                PHealthPoint = Battle(-2, NPCHit,NPCHP, PlayerHP);
            case 3
                PHealthPoint = Battle(-2, NPCHit,NPCHP, PlayerHP);
            case 4
                PHealthPoint = Battle(-8, NPCHit,NPCHP, PlayerHP);
            case 5
                PHealthPoint = Battle(-5, NPCHit,NPCHP, PlayerHP);
        end
    end
    elseif (level==2)
          switch weaponS
            case 1
                PHealthPoint = Battle(-5, NPCHit,NPCHP, PlayerHP);
            case 2
                PHealthPoint = Battle(-10, NPCHit,NPCHP, PlayerHP);
            case 3
                PHealthPoint = Battle(-13, NPCHit,NPCHP, PlayerHP);
          end
    elseif (level==3)
               switch weaponS
            case 1
                PHealthPoint = Battle(-5, NPCHit,NPCHP, PlayerHP);
            case 2
                PHealthPoint = Battle(-11, NPCHit,NPCHP, PlayerHP);
            case 3
                PHealthPoint = Battle(-30, NPCHit,NPCHP, PlayerHP);
               end
  else
    PHealthPoint = PlayerHP + randi([-5,0]);
menu(strcat("Player HP is:", num2str(PHealthPoint)), 'OK')
end

