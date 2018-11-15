% needs to happen with EVERY single level
% 3 levels: easy, medium, hard
% 3 types of attackers: advantage-takers, swarm, tank
function [Mboard, Gboard,playerHP,ATTACK] = NPCMovement(mboard, gboard, grass, nID, Pposition, PHealthPoint, inventoryW,...
    atkStyle, level, npcHP, npcIDList,npcList, npcATk, itemNPCpic,ATTACK)
% stores all rows and columns of all NPC's of npcID
[row, col] = find(mboard==nID)
NPCpos = cell(1,length(row'));
for i = 1: length(row')
    NPCpos{i} = [row(i), col(i)];
end
% STORING PLAYER POSITION
[prow, pcol] = find(mboard==sum(double(char('player'))));
% finds npcID's corresponding picture
NPCpic = itemNPCpic{1,npcIDList==nID}
% Now atkStyle:
switch atkStyle
    case "swarm" % hornets
        for d = 1: length(NPCpos) % moves every activeNPC type
            % Moves row
            oldposition = [NPCpos{d}(1),NPCpos{d}(2)];
            if(NPCpos{d}(1) > Pposition(1))
                tempNPCrow = NPCpos{d}(1)-1
                [NPCpos{d}(1),NPCpos{d}(2)] = OutOfBounds(tempNPCrow,NPCpos{d}(2),NPCpos{d}(1),NPCpos{d}(2),"NPC", mboard) % if out of bounds, address does not change
            elseif (NPCpos{d}(1) < Pposition(1))
                tempNPCrow = NPCpos{d}(1)+1
                [NPCpos{d}(1),NPCpos{d}(2)] = OutOfBounds(tempNPCrow,NPCpos{d}(2),NPCpos{d}(1),NPCpos{d}(2), "NPC", mboard) % if out of bounds, address does not change
            end
            % Moves col
            if(NPCpos{d}(2) > Pposition(2))
                tempNPCcol = NPCpos{d}(2)-1
                [NPCpos{d}(1),NPCpos{d}(2)] = OutOfBounds(NPCpos{d}(1),tempNPCcol,NPCpos{d}(1),NPCpos{d}(2), "NPC", mboard) % if out of bounds, address does not change
            elseif (NPCpos{d}(2) < Pposition(2))
                tempNPCcol = NPCpos{d}(1)+1
                [NPCpos{d}(1),NPCpos{d}(2)] = OutOfBounds(NPCpos{d}(1),tempNPCcol,NPCpos{d}(1),NPCpos{d}(2), "NPC", mboard)% if out of bounds, address does not change
            end
            % ATTACKING THE PLAYER:
            if mboard(NPCpos{d}(1),NPCpos{d}(2)) == sum(double(char('player'))) && ATTACK == false % attacks player
                [index, ~] = itemType(nID, [0,0], [0,0], npcIDList)
                PHealthPoint = Fightscrn(npcList(index), PHealthPoint, npcHP(index), npcATk(index), inventoryW,level)
                if(PHealthPoint<=0)
                    playerHP = 0;
                else
                    [mboard, gboard] = deleteOldPos(oldposition,mboard, gboard, grass);
                    playerHP = PHealthPoint
                end
                % Makes sure that there is no overlap
            elseif(oldposition(1) ~= NPCpos{d}(1) || oldposition(2) ~= NPCpos{d}(2) &&...
                    mboard(NPCpos{d}(1), NPCpos{d}(2))~= sum(double(char('player'))))
                playerHP = PHealthPoint;
                ATTACK = false;
                [mboard, gboard] = moveplayer([NPCpos{d}(1),NPCpos{d}(2)], mboard, gboard, NPCpic, nID); %use moveplayer to move NPCS
                [mboard, gboard] = deleteOldPos(oldposition,mboard, gboard, grass);
            end
        end
    case "picker" % snakes may attack if you are nearby
        % ATTACKING THE PLAYER:
        
        for d = 1: length(NPCpos)
            srow = NPCpos{d}(1)
            scol = NPCpos{d}(2)
            if(abs(prow-srow) == 1 && abs(pcol-scol) ==1 )
                    [index, ~] = itemType(nID, [0,0], [0,0], npcIDList)
                    PHealthPoint = Fightscrn(npcList(index), PHealthPoint, npcHP(index), npcATk(index), inventoryW,level)
                if(PHealthPoint<=0)
                    playerHP = 0;
                    break
                else
                    playerHP = PHealthPoint
                    [mboard, gboard] = deleteOldPos([NPCpos{d}(1),NPCpos{d}(2)],mboard, gboard, grass);
                end
            else
                playerHP = PHealthPoint
                Mboard = mboard;
                Gboard = gboard;
            end
        end
    case "tank" %always moves towards upper right hand corner
        for d = 1: length(NPCpos) % moves every activeNPC type
            % Moves row
            oldposition = [NPCpos{d}(1),NPCpos{d}(2)];
            if(NPCpos{d}(1) < 10)
                tempNPCrow = NPCpos{d}(1)+1
                [NPCpos{d}(1),NPCpos{d}(2)] = OutOfBounds(tempNPCrow,NPCpos{d}(2),NPCpos{d}(1),NPCpos{d}(2),"NPC", mboard) % if out of bounds, address does not change
            end
            % Moves col
            if(NPCpos{d}(2) < 15 )
                tempNPCcol = NPCpos{d}(1)+1
                [NPCpos{d}(1),NPCpos{d}(2)] = OutOfBounds(NPCpos{d}(1),tempNPCcol,NPCpos{d}(1),NPCpos{d}(2), "NPC", mboard)% if out of bounds, address does not change
            end
            if (oldposition(1) ~= NPCpos{d}(1) || oldposition(2) ~= NPCpos{d}(2) &&...
                    mboard(NPCpos{d}(1)))
                ATTACK = false;
                [mboard, gboard] = moveplayer([NPCpos{d}(1),NPCpos{d}(2)], mboard, gboard, NPCpic, nID); %use moveplayer to move NPCS
                [mboard, gboard] = deleteOldPos(oldposition,mboard, gboard, grass);
            end
             playerHP = PHealthPoint;
        end
end
Mboard = mboard
 playerHP = PHealthPoint;
Gboard = gboard;
end



