%% Player Movement 
% that way prow and pcol always equals to the current location of player
[prow, pcol] = find(Mboard==sum(double('player')));
Pposition = [prow, pcol]
ed = false
while ed == false
    h=figure(1);
    waitforbuttonpress
    move = get(h, 'CurrentKey')
    if(move ~= 0)
        oldposition = Pposition
        % needs error check that makes sure that
        %     1. player stays within the map (DONE)
        %     2. A menu that pulls up when player interacts with food(see Fightscrn
        %     for an example of how to do it)
        %           -> Also an player items inventory
        %     3. More work needs to be done with  enemies (see Fightscrn)
        %-> Also an player weapons inventory
        %     4. a menu that pulls up when player inreacts with weapons
        %     5. detect when the player should level up
        % TEMPORARY: UNTIL INVENTORY IS MADE
        if(Pposition==[1,15])%TEMPORARY, UNTILL OTHER LEVELS ARE MADE BISH
            level = 4;
            endscreen
        end
        inventoryW
        switch move
            case 'uparrow'
                setBehavior
                prow = prow-1
                [prow,pcol] = OutOfBounds(prow, pcol,oldposition(1),oldposition(2), "player", Mboard)
                Pposition = [prow, pcol]
                [index, ptype]=itemType(Mboard(prow,pcol),itemWID,itemFID,npcID);
                if (Mboard(prow,pcol) == playerID)
                    continue;
                else
                    PlayerInteractCheck % I MOVED ALL OF THE USER INTERACTION (WEAPONS/FOOD/NPC TO PLAYERINTERACTCHECK
                end
                loadGB(Gboard)
                continue
            case 'downarrow'
                setBehavior
                ocol = pcol
                prow = prow+1
                [prow,pcol] = OutOfBounds(prow, pcol,oldposition(1),oldposition(2), "player", Mboard) %check if player is in bounds if not inbounds player does not move
                Pposition = [prow, pcol]
                [index, ptype] = itemType(Mboard(prow,pcol),itemWID,itemFID,npcID);
                if (Mboard(prow,pcol) == playerID)
                    continue;
                else
                    PlayerInteractCheck
                end
                loadGB(Gboard)
                continue
            case 'leftarrow'
                setBehavior
                ocol = pcol
                pcol = pcol-1
                [prow,pcol] = OutOfBounds(prow, pcol,oldposition(1),oldposition(2), "player", Mboard)
                Pposition = [prow, pcol]
                [index, ptype]=itemType (Mboard(prow,pcol),itemWID,itemFID,npcID);
                if (Mboard(prow,pcol) == playerID)
                    continue;
                else
                    PlayerInteractCheck
                end
                loadGB(Gboard)
                continue
            case 'rightarrow'
                setBehavior
                ocol = pcol
                pcol = pcol+1
                [prow,pcol] = OutOfBounds(prow, pcol,oldposition(1),oldposition(2), "player", Mboard)
                Pposition = [prow, pcol]
                [index, ptype]=itemType (Mboard(prow,pcol),itemWID,itemFID,npcID);
                %              missing if statement for weapons and food
                if (Mboard(prow,pcol) == playerID)
                    continue;
                else
                    PlayerInteractCheck
                end
                loadGB(Gboard)
                continue
        end
    end
end
