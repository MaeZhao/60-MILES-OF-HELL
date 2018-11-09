%% Player Movement 
% that way prow and pcol always equals to the current location of player
[prow, pcol] = find(Mboard==sum(double('player')));
Pposition = [prow, pcol]
pspace = randi([5 10])
for i = 1: pspace

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
            tempInventory = itemListW1
    switch move
        case 'uparrow'
            prow = prow-1
            [prow,pcol] = OutOfBounds(prow, pcol,oldposition(1),oldposition(2))
            Pposition = [prow, pcol]
            % missing if statement for weapons and food
            if (Mboard(prow,pcol) == sum(double(char('player'))))
                continue;
            elseif (Mboard(prow, pcol) ~= 0 && Mboard(prow,pcol) ~= sum(double(char('player'))))
                PHealthPoint = Fightscrn('defaulNPC', PHealthPoint, 6, -5, tempInventory,level)
                [Mboard, Gboard] = moveplayer(Pposition, Mboard, Gboard, player);
                [Mboard, Gboard] = deleteOldPos(oldposition,Mboard, Gboard, grass);
                loadGB(Gboard)
                if PHealthPoint <= 0
                    endscreen
                else
                    PlayerMovement
                    [Mboard, Gboard] = moveplayer(Pposition, Mboard, Gboard, player);
                [Mboard, Gboard] = deleteOldPos(oldposition,Mboard, Gboard, grass);
                end
            else
                [Mboard, Gboard] = moveplayer(Pposition, Mboard, Gboard, player);
                [Mboard, Gboard] = deleteOldPos(oldposition,Mboard, Gboard, grass);
            end
            loadGB(Gboard)
            continue
        case 'downarrow'
            ocol = pcol
            prow = prow+1
            [prow,pcol] = OutOfBounds(prow, pcol,oldposition(1),oldposition(2)) %check if player is in bounds if not inbounds player does not move
          
            Pposition = [prow, pcol]
            % missing if statement for weapons and food
            if (Mboard(prow,pcol) == sum(double(char('player'))))
                continue;
            elseif (Mboard(prow, pcol) ~= 0 && Mboard(prow,pcol) ~= sum(double(char('player'))))
                PHealthPoint = Fightscrn('defaulNPC', PHealthPoint, 6, -5, tempInventory,level)
                [Mboard, Gboard] = moveplayer(Pposition, Mboard, Gboard, player);
                [Mboard, Gboard] = deleteOldPos(oldposition,Mboard, Gboard, grass);
                loadGB(Gboard)
                if PHealthPoint <= 0
                    endscreen
                else
                    PlayerMovement
                end
            else
                [Mboard, Gboard] = moveplayer(Pposition, Mboard, Gboard, player);
                [Mboard, Gboard] = deleteOldPos(oldposition,Mboard, Gboard, grass);
            end
           loadGB(Gboard)
           continue
        case 'leftarrow'
            ocol = pcol
            pcol = pcol-1
           [prow,pcol] = OutOfBounds(prow, pcol,oldposition(1),oldposition(2))
            Pposition = [prow, pcol]
             % missing if statement for weapons and food
            if (Mboard(prow,pcol) == sum(double(char('player'))))
                continue;
            elseif (Mboard(prow, pcol) ~= 0 && Mboard(prow,pcol) ~= sum(double(char('player'))))
                PHealthPoint = Fightscrn('defaulNPC', PHealthPoint, 6, -5, tempInventory,level)
                [Mboard, Gboard] = moveplayer(Pposition, Mboard, Gboard, player);
                [Mboard, Gboard] = deleteOldPos(oldposition,Mboard, Gboard, grass);
                loadGB(Gboard)
                if PHealthPoint <= 0
                    endscreen
                else
                    PlayerMovement
                end
            else
                [Mboard, Gboard] = moveplayer(Pposition, Mboard, Gboard, player);
                [Mboard, Gboard] = deleteOldPos(oldposition,Mboard, Gboard, grass);
            end
            loadGB(Gboard)
            continue
        case 'rightarrow'
            ocol = pcol
            pcol = pcol+1
            [prow,pcol] = OutOfBounds(prow, pcol,oldposition(1),oldposition(2))
            Pposition = [prow, pcol]
%              missing if statement for weapons and food
         if (Mboard(prow,pcol) == sum(double(char('player'))))
                continue;
            elseif (Mboard(prow, pcol) ~= 0 && Mboard(prow,pcol) ~= sum(double(char('player'))))
                PHealthPoint = Fightscrn('defaulNPC', PHealthPoint, 6, -5, tempInventory,level)
                [Mboard, Gboard] = moveplayer(Pposition, Mboard, Gboard, player);
                [Mboard, Gboard] = deleteOldPos(oldposition,Mboard, Gboard, grass);
                loadGB(Gboard)
                if PHealthPoint <= 0
                    endscreen
                else
                    PlayerMovement
                end
         else
                [Mboard, Gboard] = moveplayer(Pposition, Mboard, Gboard, player);
                [Mboard, Gboard] = deleteOldPos(oldposition,Mboard, Gboard, grass);
         end
            loadGB(Gboard)
            continue
    end
    end
end
PlayerMovement

    