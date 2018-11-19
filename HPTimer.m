HPtimer = HPtimer + 1
if HPtimer == 3
    PHealthPoint=PHealthPoint-5
    
    Message = sprintf('You are using up energy from moving. You lost 5 HP points Player HP is:%d',PHealthPoint);
    h = msgbox(Message)
    pause (2)
    % menu(strcat("You are using up energy from moving. You lost 5 HP points Player HP is:", num2str(PHealthPoint)))
    HPtimer = 0 
end
