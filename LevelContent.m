%% Level Content 
clear
clc
if (level == 1)
    itemListW = ["spikyNut", "phoneFlash", "keys", "stick"]  
    itemListF = ["funGuy",  "crumbs", "apple"]
    itemFHunger = [3, 4, 15 ; 6, 4, 15]
    npcList= ["snakes","hornets","spiders","megaToad"]
    npcHP = [6,3,2,10]
    npcATk = [-5,-2,-2,-8]
    npcID = zeros(1,length(npcList))
    for i = 1:length(npcList)
    npcID(i)= sum(double(char(npcList(i))))   
    end
    for i = 1:length(itemListW)
    ItemWID(i)= sum(double(char(itemListW(i))))
    end
    for i = 1:length(itemListF)
    ItemFID(i)= sum(double(char(itemListF(i))))
    end
    npcFreq= [3,3,3,1]

end

if (level == 2)
    itemListW =["birchWalkingStick", "metalLid"]
    itemListF = ["cannedFood","catTail", "murkyWatah"]
    itemFHunger = [33,11,-10; 33,11,5]
    npcList= ["wild dogs","rats","biting Gnats","racoon"]
    npcHP = [6,3,2,20]
    npcATk= [-6,-5,-3,-10]
    npcID = zeros(1,length(npcList))
    for i = 1:length(npcList)
    npcID(i)= sum(double(char(npcList(i))))
    end
    for i = 1:length(itemListW)
    ItemWID(i)= sum(double(char(itemListW(i))))
    end
for i = 1:length(itemListF)
    ItemFID(i)= sum(double(char(itemListF(i))))
end
    npcFreq=[4,4,2,1]
end

if (level == 3)
    itemListW = ["scrapMetal", "bearSpray"]
    itemListF = ["blueberries", "deadBird"]
    itemFHunger = [20,-10; 20,-10]
    npcList= ["wolves","mosquito","owl","Bear"]
    npcHP= [6,3,10,20]
    npcATk= [-7,-3,-5,-15]
    npcID = zeros(1,length(npcList))
   for i = 1:length(npcList)
    npcID(i)= sum(double(char(npcList(i))))
    end
    for i = 1:length(itemListW)
    ItemWID(i)= sum(double(char(itemListW(i))))
    end
for i = 1:length(itemListF)
    ItemFID(i)= sum(double(char(itemListF(i))))
end
    npcFreq= [4,6,3,1]

end 
