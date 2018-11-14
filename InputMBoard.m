function Mboard = InputMBoard(itemName, row, col, board) %change itemName to ItemID
% DELETING INPUTMBOARD  will be called whenever someone needs to add a item placed on
%INPUT THE item name in '' and CHECK WHETHER TOU CAN PLACE ITEM BEFORE EXE
itemID = sum(double(itemName)); %change itemName to ItemID
board(row, col) = itemID;
Mboard = board;
end

