function Mboard = InputMBoard(itemName, row, col, board)
%INPUTMBOARD  will be called whenever someone needs to add a item placed on
%Mboard
itemID = str2double(itemName);
board{row, col} = itemID;
Mboard = board;
end

