%% Initializing GBoard variables
clear
clc
figure('WindowStyle', 'modal'); 
Gboard = cell(10,10);
grass = imread('grass_texture.png');
for r = 1 :10
    for c = 1:10
    Gboard{r,c} = grass;
    end
end
imshow(
% for (r = 1: 10)
%     imshow([Gboard{i}}; helpMe(i+1)]
% 
%     
% %%imshow([r]; functio
