if(ptype=='N' && ATTACK == false && Mboard(prow, pcol)~= 0 && Mboard(prow,pcol) ~= playerID) % NPC
    %(NPCname, PlayerHP, NPCHP, NPCHit, inventoryW, level)
    loadGB(Gboard)
    PHealthPoint = Fightscrn(npcList(index), PHealthPoint, npcHP(index), npcATk(index), inventoryW,level)
    loadGB(Gboard)
    [Mboard, Gboard] = moveplayer(Pposition, Mboard, Gboard, player,playerID);
    [Mboard, Gboard] = deleteOldPos(oldposition,Mboard, Gboard, grass);
    ATTACK = true
    if PHealthPoint <= 0
        endscreen
    end
    %%         BRIANNAA I CREATED THE CONDITION FOR FOOD PLEASE TAKE A LOOK
elseif(ptype == 'W'&& Mboard(prow, pcol)~= 0 && Mboard(prow,pcol) ~= playerID) %Weapons
    ATTACK = false;
    %given the ID number that we find on Mboard, I would find the position
    inventoryW(index) = itemListW(index); % inventory update
    [Mboard, Gboard] = moveplayer(Pposition, Mboard, Gboard, player, playerID);
    [Mboard, Gboard] = deleteOldPos(oldposition,Mboard, Gboard, grass);
    
elseif(ptype == 'F'&& Mboard(prow, pcol)~= 0 && Mboard(prow,pcol) ~= playerID)%Food
     ATTACK = false;
    disp("NEEDS TO BE CODED!")
    [Mboard, Gboard] = moveplayer(Pposition, Mboard, Gboard, player, playerID);
    [Mboard, Gboard] = deleteOldPos(oldposition,Mboard, Gboard, grass);
else
     ATTACK = false;
    [Mboard, Gboard] = moveplayer(Pposition, Mboard, Gboard, player, playerID);
    [Mboard, Gboard] = deleteOldPos(oldposition,Mboard, Gboard, grass);
end
% loadGB(Gboard)
setBehavior
endscreen
 loadGB(Gboard)

