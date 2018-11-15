 if mboard(tprow,tpcol) == sum(double(char('player'))) % attacks player
            [index, ~] = itemType(itemID,itemWID,itemFID,npcID)
            PHealthPoint = Fightscrn(npcList(index), PHealthPoint, npcHP(index), npcATk(index), inventoryW,level)
            if(PHealthPoint>0)
                prow = tprow;
                pcol = tpcol;
            else
                prow = oldposition1
                pcol = oldposition2
                endscreen
            end
 end
