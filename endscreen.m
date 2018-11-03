% End Screen INCOMPLETE 
if level>3
    msgbox({'You won',Thank You For Playing})
else 
    msgbox({'You lost',Thank You For Playing})
end 
gameEnd = char(inputdlg("Do you want to play again?"))
if (Play== 'Y'|| play== 'y')
    load menu
else 
    exit game
end 
