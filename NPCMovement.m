% needs to happen with EVERY single level
% 4 types of attackers: swarmer, picker,nester, tank
% stores all rows and columns of all NPC's of npcID
% BEFORE MUST INITIALIZE NID
Mboard = Mboard
[nrow, ncol] = find(Mboard==nID)
npos = cell(1,length(nrow'));
for i = 1: length(nrow')
    npos{i} = [nrow(i), ncol(i)];
end
% finds npcID's corresponding picture
npic = itemNPCPic{1,npcID==nID}
% Now atkStyle:
switch atkStyle
    case "swarmer" % hornets
        %TODO: swarmers get stuck and stop moving, and also jumps
        for d = 1: length(npos) % moves every activeNPC type
            % Moves row
            nPosOld = [npos{d}(1),npos{d}(2)];
            if(moveRow == false)
                if(npos{d}(1) > Pposition(1))
                    moveRow = true; % I want to alternate the row and column moves
                    tempNrow = npos{d}(1)-1
                    [npos{d}(1),npos{d}(2)] = OutOfBounds(tempNrow,npos{d}(2),npos{d}(1),npos{d}(2),"NPC", Mboard) % if out of bounds, address does not change
                elseif (npos{d}(1) < Pposition(1))
                    moveRow = true;
                    tempNrow = npos{d}(1)+1
                    [npos{d}(1),npos{d}(2)] = OutOfBounds(tempNrow,npos{d}(2),npos{d}(1),npos{d}(2), "NPC", Mboard) % if out of bounds, address does not change
                end
                % Moves col
            else
                if (npos{d}(2) > Pposition(2) && moveRow == true)
                    moveRow = false;
                    tempNcol = npos{d}(2)-1
                    [npos{d}(1),npos{d}(2)] = OutOfBounds(npos{d}(1),tempNcol,npos{d}(1),npos{d}(2), "NPC", Mboard) % if out of bounds, address does not change
                elseif (npos{d}(2) < Pposition(2)&& moveRow == true)
                    moveRow = false;
                    tempNcol = npos{d}(1)+1
                    [npos{d}(1),npos{d}(2)] = OutOfBounds(npos{d}(1),tempNcol,npos{d}(1),npos{d}(2), "NPC", Mboard)% if out of bounds, address does not change
                end
                if Mboard(npos{d}(1),npos{d}(2)) == playerID && ATTACK == false
                    npcAttack %attacks player
                    [Mboard, Gboard] = moveplayer([npos{d}(1),npos{d}(2)], Mboard, Gboard, npic, nID); %use moveplayer to move NPCS
                    [Mboard, Gboard] = deleteOldPos(nPosOld,Mboard, Gboard, grass);
                    
                end
            end
            %           NPC attacks player (if the player isn't already attacking):
            %             if Mboard(npos{d}(1),npos{d}(2)) == playerID && ATTACK == false
            %                 npcAttack %attacks player
            %             end
            %           IN OTHER WORDS when NPC is not attacking,Mboard and Gboard only
            %           changes when the nposition changes
            if(nPosOld(1) ~= npos{d}(1) || nPosOld(2) ~= npos{d}(2)&& Mboard(npos{d}(1),npos{d}(2)) ~= playerID)
                [Mboard, Gboard] = moveplayer([npos{d}(1),npos{d}(2)], Mboard, Gboard, npic, nID); %use moveplayer to move NPCS
                [Mboard, Gboard] = deleteOldPos(nPosOld,Mboard, Gboard, grass);
            end
        end
    case "picker" % attacks if players are 1 space horizontally/vertically away
        for d = 1: length(npos)
            if((abs(npos{d}(1)-Pposition(1)) == 1 && npos{d}(2)== Pposition(2))...
                    || (abs(npos{d}(2)-Pposition(2)) == 1 && npos{d}(1)== Pposition(1)))
                npcAttack
                [Mboard, Gboard] = moveplayer([npos{d}(1),npos{d}(2)], Mboard, Gboard, npic, nID); %use moveplayer to move NPCS
                [Mboard, Gboard] = deleteOldPos(nPosOld,Mboard, Gboard, grass);
            end
        end
    case "nester" %stays in relatively the same positions
        for d = 1: length(npos)
            tempNrow = npos{d}(1)
            tempNcol = npos{d}(2)
            nPosOld = [npos{d}(1), npos{d}(2)];
            rstep = 1
            cstep =1
            %             NON EDGE ROW AND COL NPC's
            if(tempNrow~=10 && tempNrow~=1 && tempNcol ~= 15 && tempNcol~= 1)
                if(moveRow == false) %rows
                    if(rstep == 1)
                        rstep = -1;
                        tempNrow = npos{d}(1)+rstep;
                        [npos{d}(1),npos{d}(2)] = OutOfBounds(tempNrow,tempNcol,npos{d}(1),npos{d}(2),"NPC", Mboard)
                    else % movement of row
                        rstep = 1;
                        tempNrow = npos{d}(1)+rstep;
                        [npos{d}(1),npos{d}(2)] = OutOfBounds(tempNrow,tempNcol,npos{d}(1),npos{d}(2),"NPC", Mboard)
                    end
                    moveRow = true
                end
                if(moveRow == true) % Moves col
                    if(npos{d}(2) >= 1 && cstep == 1)
                        cstep = -1;
                        tempNcol = npos{d}(2)+cstep;
                        [npos{d}(1),npos{d}(2)] = OutOfBounds(tempNrow,tempNcol,npos{d}(1),npos{d}(2),"NPC", Mboard)
                    else % movement of col
                        cstep = 1;
                        tempNcol = npos{d}(2)+cstep;
                        tempNrow = npos{d}(1)
                        [npos{d}(1),npos{d}(2)] = OutOfBounds(tempNrow,tempNcol,npos{d}(1),npos{d}(2),"NPC", Mboard)
                    end
                    moveRow = false
                end
                [Mboard, Gboard] = moveplayer([npos{d}(1),npos{d}(2)], Mboard, Gboard, npic, nID); %use moveplayer to move NPCS
                [Mboard, Gboard] = deleteOldPos(nPosOld,Mboard, Gboard, grass);
            end
            %             IF ROW AND COL DID NOT MOVE: so all edge npcs or npcs with
            %             something in its way (that isn't the player)
            if(((tempNrow == npos{d}(1)&& moveRow == true)||( tempNcol == npos{d}(1) && moveRow == false) &&  Mboard(npos{d}(1),npos{d}(2)) ~= playerID))
                % sets the movement scope(range) for npc's on edge rows and
                % columns
                srMin = tempNrow-1
                srMax =tempNrow+1
                scMin = tempNcol-1
                scMax = tempNcol+1
                % THIS IS SETS VALUES FOR EDGE NPC's
                if(tempNrow + 1 >10 ||tempNrow -1 <1||tempNcol + 1>15||tempNcol-1<1)
                    if(tempNrow + 1 > 10)
                        srMax = 10
                    elseif (tempNrow -1 <1)
                        srMin = 1
                    end
                    if (tempNcol + 1>15)
                        scMax = 15
                    elseif(tempNcol-1<1)
                        scMin = 1
                    end
                end
                scope = Mboard((srMin:srMax),(scMin:scMax))
                [scopeR, scopeC] = find(scope==0) % addresses of the 0's around npc
                if(randi([1 2], 1) == 1)
                    rstep = scopeR(randi([1,length(scopeR)],1)) -tempNrow
                    cstep = 0
                else
                    rstep = 0
                    cstep = scopeC(randi([1,length(scopeC)]),1)- tempNcol
                    %           NPC attacks player (if the player isn't already attacking):
                end
                [npos{d}(1),npos{d}(2)] = OutOfBounds(tempNrow+rstep,tempNcol+cstep,npos{d}(1),npos{d}(2),"NPC", Mboard)
                [Mboard, Gboard] = moveplayer([npos{d}(1),npos{d}(2)], Mboard, Gboard, npic, nID); %use moveplayer to move NPCS
                [Mboard, Gboard] = deleteOldPos(nPosOld,Mboard, Gboard, grass);
            end
            if Mboard(npos{d}(1),npos{d}(2)) == playerID && ATTACK == false
                npcAttack %attacks player
                [Mboard, Gboard] = moveplayer([npos{d}(1),npos{d}(2)], Mboard, Gboard, npic, nID); %use moveplayer to move NPCS
                [Mboard, Gboard] = deleteOldPos(nPosOld,Mboard, Gboard, grass);
            end
        end
end
clear nID atkStyle tempNrow tempNcol;


