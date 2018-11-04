%% Player Movement 

pspace = randi([5 10])
for i = 1: pspace
    h=figure(Gboard);
    waitforbuttonpress;
    move =get(h, 'CurrentKey');
    
    oldposition = pposition
    switch move
        case 'up arrow'
            Pposition = {prow,pcol-1}
            moveplayer(Pposition)
            deleteOldPos(Oldposition)
        case 'downarrow'
            Pposition = {prow,pcol+1}
            moveplayer(Pposition)
            deleteOldPos(Oldposition)
        case 'leftarrow'
            Pposition = {prow-1,pcol}
            moveplayer(Pposition)
            deleteOldPos(Oldposition)
        case 'rightarrow'
            Pposition = {prow+1,pcol}
            moveplayer(Pposition)
            deleteOldPos(Oldposition)
    end
end

    