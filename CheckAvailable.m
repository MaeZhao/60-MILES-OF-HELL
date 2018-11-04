if MBoard(row,col)==0
    available=true;     %Space opened for player 1 or 2
else
    available = false; %Prevent Player 1 or 2 from taking same space
    disp('pick again')
end 