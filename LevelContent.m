%% Level Content 
genericFreq = [1, 1, 1, 1, 1, 1];
playerID = sum(double(char('player')));
player = imread('All_Sprites_PNG\temp_chick.png');
if (level == 1)
    itemListW = ["spikyNut", "phoneFlash", "keys", "stick"]  
    itemWPic = loadSprite(itemListW, 'W');
    itemListF = ["funGuy",  "crumbs", "apple"]
    itemFPic = loadSprite(itemListF, 'F');
    itemFHunger = [3, 4, 15 ; 6, 4, 15]
    npcList= ["snakes","hornets","spiders","megaToad"]
    itemNPCPic = loadSprite(npcList, 'N');
    npcHP = [6,3,2,10]
    npcATk = [-5,-2,-2,-8]
    npcID = zeros(1,length(npcList))
    for i = 1:length(npcList)
    npcID(i)= sum(double(char(npcList(i))))   
    end
    for i = 1:length(itemListW)
    itemWID(i)= sum(double(char(itemListW(i))))
    end
    for i = 1:length(itemListF)
    itemFID(i)= sum(double(char(itemListF(i))))
    end
    npcFreq= [3,3,3,1]
    
end

if (level == 2)
    itemListW =["birchWalkingStick", "metalLid"]
    itemWPic = loadSprite(itemListW, 'W');
    itemListF = ["cannedFood","catTail", "murkyWatah"]
    itemFPic = loadSprite(itemListF, 'F');
    itemFHunger = [33,11,-10; 33,11,5]
    npcList= ["wild dogs","rats","biting Gnats","racoon"]
    itemNPCPic = loadSprite(npcList, 'N');
    npcHP = [6,3,2,20]
    npcATk= [-6,-5,-3,-10]
    npcID = zeros(1,length(npcList))
    for i = 1:length(npcList)
    npcID(i)= sum(double(char(npcList(i))))
    end
    for i = 1:length(itemListW)
    itemWID(i)= sum(double(char(itemListW(i))))
    end
for i = 1:length(itemListF)
    itemFID(i)= sum(double(char(itemListF(i))))
end
    npcFreq=[4,4,2,1]
end

if (level == 3)
    itemListW = ["scrapMetal", "bearSpray"]
    itemWPic = loadSprite(itemListW, 'W');
    itemListF = ["blueberries", "deadBird"]
    itemFPic = loadSprite(itemListF, 'F');
    itemFHunger = [20,-10; 20,-10]
    npcList= ["wolves","mosquito","owl","Bear"]
    itemNPCPic = loadSprite(npcList, 'N');
    npcHP= [6,3,10,20]
    npcATk= [-7,-3,-5,-15]
    npcID = zeros(1,length(npcList))
   for i = 1:length(npcList)
    npcID(i)= sum(double(char(npcList(i))))
    end
    for i = 1:length(itemListW)
    itemWID(i)= sum(double(char(itemListW(i))))
    end
for i = 1:length(itemListF)
    itemFID(i)= sum(double(char(itemListF(i))))
end
    npcFreq= [4,6,3,1]

end 
