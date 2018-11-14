% End Screen 
if level>3
    w = msgbox("After 3 hard nights,Chick Lil reached civilization, and lived happily ever after. Congrats!"...
               , "THE END") 
    uiwait(w);
elseif (PHealthPoint <= 0)
    w = msgbox("Oh no!! Chick Lil died!"...
               , "THE END") 
    uiwait(w);
gameEnd = questdlg("Do you want to play again?",'Play Again?', "Yes",...
    "No", "Yes")
switch gameEnd
    case "Yes"
        GameStart
    case "No"
end