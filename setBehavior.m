% sets behavior of npc's for each level
if(level == 1)
    nID = npcID(find(npcList=="hornets"));
    atkStyle = "swarmer"
    moveRow = false; % used to alternate row and col moves
    NPCMovement
    
    nID = npcID(find(npcList=="snakes"));
    atkStyle = "picker"
    moveRow = false; % used to alternate row and col moves
    NPCMovement
    
    nID = npcID(find(npcList=="spiders"));
    atkStyle = "nester"
    moveRow = false; % used to alternate row and col moves
    NPCMovement
end
    