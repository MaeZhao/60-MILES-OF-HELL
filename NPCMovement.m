% needs to happen with EVERY single level
% 3 levels: easy, medium, hard
% 3 types of attackers: indirect, swarm, tank
function [Mboard, Gboard] = NPCMovement(mboard, gboard, grass, nID, Pposition, atkStyle, npcIDList, itemNPCpic)
% stores all rows and columns of all NPC's of npcID
[row, col] = find(mboard==nID) 
NPCpos = cell(1,length(row'));
for i = 1: length(row')
    NPCpos{i} = [row(i), col(i)];
end
% finds npcID's corresponding picture
NPCpic = itemNPCpic(npcIDList==nID)
% Now atkStyle:
switch atkStyle
    case "direct" %level 1 toad
        for d = 1: length(activeNPC) % moves every activeNPC type
            % Moves row
            if(NPCpos{d}(1) > Pposition(1))
                tempNPCrow = NPCpos{d}(1)-1
                NPCpos{d} = OutOfBounds(tempNPCrow,NPCpos{d}(2),NPCpos{d}(1),NPCpos{d}(2)) % if out of bounds, address does not change
            elseif (NPCpos{d}(1) < Pposition(1))
                tempNPCrow = NPCpos{d}(1)+1
                NPCpos{d} = OutOfBounds(tempNPCrow,NPCpos{d}(2),NPCpos{d}(1),NPCpos{d}(2), "NPC", mboard) % if out of bounds, address does not change
            end
            % Moves col
            if(NPCpos{d}(2) > Pposition(2))
                tempNPCcol = NPCpos{d}(2)-1
                NPCpos{d} = OutOfBounds(NPCpos{d}(1),tempNPCcol,NPCpos{d}(1),NPCpos{d}(2), "NPC", mboard) % if out of bounds, address does not change
            elseif (NPCpos{d}(2) < Pposition(2))
                tempNPCcol = NPCpos{d}(1)+1
                NPCpos{d} = OutOfBounds(NPCpos{d}(1),tempNPCcol,NPCpos{d}(1),NPCpos{d}(2), "NPC", mboard)% if out of bounds, address does not change
            end
            [mboard, gboard] = moveplayer(NPCpos{d}, mboard, gboard, NPCpic, nID, "NPC", mboard); %use moveplayer to move NPCS
            [mboard, gboard] = deleteOldPos(oldposition,mboard, gboard, grass);
        end
end
[Mboard, Gboard] = [mboard,gboard]
end
            
            
