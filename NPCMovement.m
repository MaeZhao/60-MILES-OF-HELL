% needs to happen with EVERY single level
function [Mboard, Gboard] = NPCMovement(NPCIDList,NPCName,NPCPic, mboard, gboard)
tboard = mboard;
if (level == 1)
    for d=1; length(NPCIDList)
        find(tboard,NPCIDList(d))
        [mboard, gboard] = placeItem(mboard, gboard, NPCName(d),NPCPic,1)
    end 
end 
        
    
