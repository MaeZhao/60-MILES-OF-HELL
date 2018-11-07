clear
clc
play = char(inputdlg("Do you want to play 60 Miles of Hell!!! (y for yes, any other key for no)", 'Start Game'))
if (play =="y" || play == "Y")
    gamestart = true;
    player = imread('All_Sprites_PNG\temp_chick.png');
    start = msgbox('Chicken lil is lost in the woods. The nearest civilization is 60 miles away. Help him in his journey to saftey!', 'The story!', 'custom',...
        player)
    waitfor(start);
    GameboardDetails
else
    msgbox({'Game over'})
    pause(3)
    close all hidden
end
    

    