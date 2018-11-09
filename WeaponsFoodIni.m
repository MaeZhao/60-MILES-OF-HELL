itemListW1 = ["spikyNut", "phoneFlash", "keys", "stick"]
itemListF1 = ["funGuy",  "crumbs", "apple"]
itemListW2 =["birchWalkingStick", "metalLid"]
itemListF2 = ["cannedFood","catTail", "murkyWatah"]
itemListW3 = ["scrapMetal", "bearSpray"]
itemListF3 = ["blueberries", "deadBird"]

spikyNut = [-2, -2]
phoneFlash = [-2,-2]
keys = [-6. -6]
stick = [-5,-5]
birchWalkingStick = [-10, -10]
metalLid = [-13, -13]
scrapMetal= [-11,-11]
bearSpray= [-30,-30]
funGuy=[-3, 6]
crumbs= [4,4]
apple = [15,15]
cannedFood = [33,33]
catTail =[11,11]
murkyWatah =[-1, 5]
bluberries = [20,20]
deadBird = [-10, -10]

%% NPC

npcListL1 = ["snakes","hornets","spiders","megaToad"]
npcListL2 = ["wild dogs","rats","biting Gnats","racoon"]
npcListL3 = ["wolves","mosquito","owl","Bear"]

%HP List
npcHPL1 = [6,3,2,10]
npcHPL2 = [6,3,2,20]
npcHPL3 = [6,3,10,20]

%HP Attack
npcATkL1 = [-5,-2,-2,-8]
npcATkL2 = [-6,-5,-3,-10]
npcATkL3 = [-7,-3,-5,-15]
%% 
npcIDL1 = zeros(1,length(npcListL1))
npcIDL2 = zeros(1,length(npcListL2))
npcIDL3 = zeros(1,length(npcListL3))

for i = 1:length(npcListL1)
    npcIDL1(i)= sum(double(char(npcListL1(i))))
end
for i = 1:length(npcListL2)
    npcIDL2 (i)= sum(double(char(npcListL2(i))))
end
for i = 1:length(npcListL3)
    npcIDL3(i)= sum(double(char(npcListL3(i))))
end

