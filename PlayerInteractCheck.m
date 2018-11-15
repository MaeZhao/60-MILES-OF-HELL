if(ptype=='N' && Mboard(prow, pcol)~= 0 && Mboard(prow,pcol) ~= playerID) % NPC
    PHealthPoint = Fightscrn(npcList(index), PHealthPoint, 6, -5, tempInventory,level)
    % Our goal is to Call NPC Movement
    [Mboard, Gboard] = moveplayer(Pposition, Mboard, Gboard, player,playerID);
    [Mboard, Gboard] = deleteOldPos(oldposition,Mboard, Gboard, grass);
    loadGB(Gboard)
    if PHealthPoint <= 0
        endscreen
    end
    %%         BRIANNAA I CREATED THE CONDITION FOR FOOD PLEASE TAKE A LOOK
elseif(ptype == 'W'&& Mboard(prow, pcol)~= 0 && Mboard(prow,pcol) ~= playerID) %Weapons
    %given the ID number that we find on Mboard, I would find the position
    %of the ID number in the itemlistWID index 
    disp("NEEDS TO BE CODED!")
    [Mboard, Gboard] = moveplayer(Pposition, Mboard, Gboard, player, playerID);
    [Mboard, Gboard] = deleteOldPos(oldposition,Mboard, Gboard, grass);
    
elseif(ptype == 'F'&& Mboard(prow, pcol)~= 0 && Mboard(prow,pcol) ~= playerID)%Food
    disp("NEEDS TO BE CODED!")
    [Mboard, Gboard] = moveplayer(Pposition, Mboard, Gboard, player, playerID);
    [Mboard, Gboard] = deleteOldPos(oldposition,Mboard, Gboard, grass);
else
    [Mboard, Gboard] = moveplayer(Pposition, Mboard, Gboard, player, playerID);
    [Mboard, Gboard] = deleteOldPos(oldposition,Mboard, Gboard, grass);
end
loadGB(Gboard)

