%% Initializing GBoard variables
clear
clc
figure('WindowStyle', 'modal'); 
Gboard = cell(20,30);
grass = imread('grass_texture.png');
for r = 1 :20
    for c = 1:30
    Gboard{r,c} = grass;
    end
end
player = imread('grass_texturetemp.png');
Gboard{5, 5} = player;
h= imshow([Gboard{1,:};Gboard{2,:};Gboard{3,:};Gboard{4,:};Gboard{5,:};Gboard{6,:};Gboard{7,:};Gboard{8,:};Gboard{9,:};Gboard{10,:};...
    Gboard{11,:};Gboard{12,:};Gboard{13,:};Gboard{14,:};Gboard{15,:};Gboard{16,:};Gboard{17,:};Gboard{18,:};Gboard{19,:};Gboard{20,:}])
% imshow([Gboard{1,:};Gboard{2,:};Gboard{3,:};Gboard{4,:};Gboard{5,:};Gboard{6,:};Gboard{7,:};Gboard{8,:};Gboard{9,:};Gboard{10,:};...
%     Gboard{11,:};Gboard{12,:};Gboard{13,:};Gboard{14,:};Gboard{15,:};Gboard{16,:};Gboard{17,:};Gboard{18,:};Gboard{19,:};Gboard{20,:};...
%     Gboard{21,:};Gboard{22,:};Gboard{23,:};Gboard{24,:};Gboard{25,:};Gboard{26,:};Gboard{27,:};Gboard{28,:};Gboard{29,:};Gboard{30,:};...
%     Gboard{31,:};Gboard{32,:};Gboard{33,:};Gboard{34,:};Gboard{35,:};Gboard{36,:};Gboard{37,:};Gboard{38,:};Gboard{39,:};Gboard{40,:};...
%     Gboard{41,:};Gboard{42,:};Gboard{43,:};Gboard{44,:};Gboard{45,:};Gboard{46,:};Gboard{47,:};Gboard{48,:};Gboard{49,:};Gboard{50,:};...
%     Gboard{51,:};Gboard{52,:};Gboard{53,:};Gboard{54,:};Gboard{55,:};Gboard{56,:};Gboard{57,:};Gboard{58,:};Gboard{59,:};Gboard{60,:};...
%     Gboard{61,:};Gboard{62,:};Gboard{63,:};Gboard{64,:};Gboard{65,:};Gboard{66,:};Gboard{67,:};Gboard{68,:};Gboard{69,:};Gboard{70,:};...
%     Gboard{71,:};Gboard{72,:};Gboard{73,:};Gboard{74,:};Gboard{75,:};Gboard{76,:};Gboard{77,:};Gboard{78,:};Gboard{79,:};Gboard{80,:};...
%     Gboard{81,:};Gboard{82,:};Gboard{83,:};Gboard{84,:};Gboard{85,:};Gboard{86,:};Gboard{87,:};Gboard{88,:};Gboard{89,:};Gboard{90,:};...
%     Gboard{91,:};Gboard{92,:};Gboard{93,:};Gboard{94,:};Gboard{95,:};Gboard{96,:};Gboard{97,:};Gboard{98,:};Gboard{99,:};Gboard{100,:};...
%     ]);
% for (r = 1: 10)
%     imshow([Gboard{i}}; helpMe(i+1)]
% 
%     
% %%imshow([r]; functio
