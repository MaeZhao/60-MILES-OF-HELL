% sets behavior of npc's for each level
if(level == 1)
    nID = npcID(find(npcList=="hornets"));
    atkStyle = npcType(find(npcList=="hornets"));
    moveRow = false; % used to alternate row and col moves
    NPCMovement
    
    nID = npcID(find(npcList=="snakes"));
    atkStyle = npcType(find(npcList=="snakes"));
    moveRow = false; % used to alternate row and col moves
    NPCMovement
    
    nID = npcID(find(npcList=="spiders"));
    atkStyle = npcType(find(npcList=="spiders"));
    moveRow = false; % used to alternate row and col moves
    NPCMovement
end
    