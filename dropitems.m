function dropitems(level)
switch level
    case 1 
          itemListW= itemListW1
          itemListF=  itemListF1
    case 2
        itemListW= itemListW2
        itemListF= itemListF2
    case 3
       itemListW= itemListW3
       itemListF=  itemListF3
end

drow = randi(1,100)
dcol = randi(1,100)
Mboard(drow,dcol) = itemListW

drow = randi(1,100)
dcol = randi(1,100)
Mboard(drow,dcol) = itemListf

end

       
