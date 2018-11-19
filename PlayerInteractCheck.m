if(ptype=='N' && ATTACK == false && Mboard(prow, pcol)~= 0 && Mboard(prow,pcol) ~= playerID) % NPC
    %(NPCname, PlayerHP, NPCHP, NPCHit, inventoryW, level)
    loadGB(Gboard)
    PHealthPoint = Fightscrn(npcList(index), PHealthPoint, npcHP(index), npcATk(index), inventoryW,level,...
       npcList,itemListW, itemWhit, npcHP,npcATk)
    loadGB(Gboard)
    [Mboard, Gboard] = moveplayer(Pposition, Mboard, Gboard, player,playerID);
    [Mboard, Gboard] = deleteOldPos(oldposition,Mboard, Gboard, grass);
    ATTACK = true
    endscreen
elseif(ptype == 'W'&& Mboard(prow, pcol)~= 0 && Mboard(prow,pcol) ~= playerID) %Weapons
    ATTACK = false;
    %given the ID number that we find on Mboard, I would find the position
    inventoryW(index) = itemListW(index); % inventory update
    [Mboard, Gboard] = moveplayer(Pposition, Mboard, Gboard, player, playerID);
    [Mboard, Gboard] = deleteOldPos(oldposition,Mboard, Gboard, grass);
    
elseif(ptype == 'F'&& Mboard(prow, pcol)~= 0 && Mboard(prow,pcol) ~= playerID)%Food
    ATTACK = false;
    points = randi([itemFHunger(1, itemFID==Mboard(prow,pcol)), itemFHunger(2,itemFID==Mboard(prow,pcol))], 1);
    PHealthPoint = points + PHealthPoint
    Food = msgbox(strcat("You ate a ", itemListF(itemFID==Mboard(prow,pcol)), " you gained ",...
        num2str(points)," health. Your total health is: " , num2str(PHealthPoint)));
    uiwait(Food);
    [Mboard, Gboard] = moveplayer(Pposition, Mboard, Gboard, player, playerID);
    [Mboard, Gboard] = deleteOldPos(oldposition,Mboard, Gboard, grass);
else
    PHealthPoint
    ATTACK = false;
    [Mboard, Gboard] = moveplayer(Pposition, Mboard, Gboard, player, playerID);
    [Mboard, Gboard] = deleteOldPos(oldposition,Mboard, Gboard, grass);
end
% loadGB(Gboard)
% setBehavior
loadGB(Gboard)

