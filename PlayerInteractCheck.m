if(ptype=='N' && ATTACK == false && Mboard(prow, pcol)~= 0 && Mboard(prow,pcol) ~= playerID) % NPC
    %(NPCname, PlayerHP, NPCHP, NPCHit, inventoryW, level)
    loadGB(Gboard)
    PHealthPoint = Fightscrn(npcList(index), PHealthPoint, npcHP(index), npcATk(index), inventoryW,level)
    [Mboard, Gboard] = moveplayer(Pposition, Mboard, Gboard, player,playerID);
    [Mboard, Gboard] = deleteOldPos(oldposition,Mboard, Gboard, grass);
    ATTACK = false
    if PHealthPoint <= 0
        endscreen
    end
    %%         BRIANNAA I CREATED THE CONDITION FOR FOOD PLEASE TAKE A LOOK
elseif(ptype == 'W'&& Mboard(prow, pcol)~= 0 && Mboard(prow,pcol) ~= playerID) %Weapons
    %given the ID number that we find on Mboard, I would find the position
    inventoryW(index) = itemListW(index); % inventory update
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
% loadGB(Gboard)
[Mboard, Gboard, PHealthPoint,ATTACK] = NPCMovement(Mboard, Gboard, grass, npcID(find(npcList=="hornets")), Pposition, PHealthPoint,inventoryW,...
    "swarm", level, npcHP, npcID,npcList,npcATk, itemNPCPic, ATTACK)
[Mboard, Gboard, PHealthPoint,ATTACK] = NPCMovement(Mboard, Gboard, grass, npcID(find(npcList=="snakes")), Pposition, PHealthPoint,inventoryW,...
    "picker", level, npcHP, npcID,npcList,npcATk, itemNPCPic, ATTACK)
[Mboard, Gboard, PHealthPoint,ATTACK] = NPCMovement(Mboard, Gboard, grass, npcID(find(npcList=="megaToad")), Pposition, PHealthPoint,inventoryW,...
    "tank", level, npcHP, npcID,npcList,npcATk, itemNPCPic, ATTACK)
endscreen
 loadGB(Gboard)

