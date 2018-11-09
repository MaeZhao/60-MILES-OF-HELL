% needs to happen with EVERY single level
function [Mboard, Gboard] = NPCMovement(NPCIDList, NPCFreq,NPCName, mboard, gboard)
tboard = mboard;
if (level == 1)
    for d=1; length(NPCIDList)
        find(tboard,NPCIDList(d))
        % [Gboard, Mboard] = placeItem(mboard, gboard, Itemname, Itemtype, Itemfreq)
        [mboard, gboard] = placeItem(mboard, gboard, NPCName(d), 
    end 
end 
        
    
