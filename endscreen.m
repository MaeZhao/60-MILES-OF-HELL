% End Screen
[prow, pcol] = find(Mboard==playerID)
if((level>1 && inventoryW(3) == "keys" )|| PHealthPoint <= 0)
    if (PHealthPoint <= 0)
        w = msgbox("Oh no!! Chick Lil died!"...
            , "THE END")
        uiwait(w);
    elseif level > 1
        w = msgbox("After giving the Toad his key, Chicken Lil woke up the next morning in the hospital, alive and safe.", "THE END")
        uiwait(w);
    
    end
%     gameEnd = questdlg("Do you want to play again?",'Play Again?', "Yes",...
%         "No", "Yes")
%     switch gameEnd
%         case "Yes"
%             GameStart
%         case "No"
            close all hidden
%     end
end