function [functional, Mboard]= InputMBoard(itemName, row, col, board)
%INPUTMBOARD  will be called whenever someone needs to add a item placed on
%Mboard
itemID = str2double(itemName);
board{row, col} = bval
if bval == 0
Mboard{row, col} = itemID;
functional = true;
else
functional = false;
Mboard = board;
end
