% End Screen
[prow, pcol] = find(Mboard==playerID)
if((prow == 1 && pcol == 15)||  PHealthPoint <= 0)
    level = level + 1;
    if level > 1
        w = msgbox("After 3 hard nights,Chick Lil reached civilization, and lived happily ever after. Congrats!"...
            , "THE END")
        uiwait(w);
    elseif (PHealthPoint <= 0)
        w = msgbox("Oh no!! Chick Lil died!"...
            , "THE END")
        uiwait(w);
    end
    gameEnd = questdlg("Do you want to play again?",'Play Again?', "Yes",...
        "No", "Yes")
    switch gameEnd
        case "Yes"
            GameStart
        case "No"
            close all hidden
    end
end