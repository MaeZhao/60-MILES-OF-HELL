play = char(inputdlg("Do you want to play 60 Miles of Hell!!! (y for yes, any other key for no)", 'Start Game'))

if (play =="y" || play == "Y")
    gamestart = true
    GameboardDetails
else
    msgbox({'Game over' , 'Thank you for playing'})
    close all hidden
end
    

    