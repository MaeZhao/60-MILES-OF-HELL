%% Player Movement 
Pposition = [5,5]
pspace = randi([5 10])
prow=Pposition(1)
pcol=Pposition(2)
for i = 1: pspace
    h=figure(1);
    waitforbuttonpress;
    move = get(h, 'CurrentKey')
    oldposition = Pposition
    switch move
        case 'uparrow'
            Pposition = [prow, pcol-1]
            pcol=pcol-1
            Pposition = [prow,pcol]
            moveplayer(Pposition)
            deleteOldPos(oldposition)
        case 'downarrow'
            Pposition = [prow,pcol+1]
            pcol=pcol+1
            Pposition = [prow,pcol]
            moveplayer(Pposition)
            deleteOldPos(Oldposition)
        case 'leftarrow'
            Pposition = {prow-1,pcol}
            prow=prow-1
            Pposition = [prow,pcol]
            moveplayer(Pposition)
            deleteOldPos(Oldposition)
        case 'rightarrow'
            Pposition = {prow+1,pcol}
            prow=prow+1
            Pposition = [prow,pcol]
            moveplayer(Pposition)
            deleteOldPos(Oldposition)
    end
end

    