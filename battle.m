function [PlayerHP] = battle(PlayerHit, NPCHit,NPCHP, Playerhp)
%BATTLE Summary of this function goes here
%   Battles until someone dies
while(NPCHP > 0 && Playerhp > 0)
    NPCHP = NPCHP + PlayerHit;
    if NPCHP <= 0
        PlayerHP = Playerhp;
        break
    end
    Playerhp = Playerhp + NPCHit;
end
PlayerHP = Playerhp;
end

