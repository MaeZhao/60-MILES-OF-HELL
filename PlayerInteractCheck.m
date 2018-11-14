if(ptype=='N' && Mboard(prow, pcol)~= 0 && Mboard(prow,pcol) ~= playerID) % NPC
                PHealthPoint = Fightscrn(npcList(index), PHealthPoint, 6, -5, tempInventory,level)
                [Mboard, Gboard] = moveplayer(Pposition, Mboard, Gboard, player);
                [Mboard, Gboard] = deleteOldPos(oldposition,Mboard, Gboard, grass);
                loadGB(Gboard)
                if PHealthPoint <= 0
                    endscreen
                end
%%         BRIANNAA I CREATED THE CONDITION FOR FOOD PLEASE TAKE A LOOK        
            elseif(ptype == 'W'&& Mboard(prow, pcol)~= 0 && Mboard(prow,pcol) ~= playerID) %Weapons
                disp("NEEDS TO BE CODED!")
                [Mboard, Gboard] = moveplayer(Pposition, Mboard, Gboard, player);
                [Mboard, Gboard] = deleteOldPos(oldposition,Mboard, Gboard, grass);
                
            elseif(ptype == 'F'&& Mboard(prow, pcol)~= 0 && Mboard(prow,pcol) ~= playerID)%Food
                disp("NEEDS TO BE CODED!")
                [Mboard, Gboard] = moveplayer(Pposition, Mboard, Gboard, player);
                [Mboard, Gboard] = deleteOldPos(oldposition,Mboard, Gboard, grass);
            else
                [Mboard, Gboard] = moveplayer(Pposition, Mboard, Gboard, player);
                [Mboard, Gboard] = deleteOldPos(oldposition,Mboard, Gboard, grass);
end
            loadGB(Gboard)

