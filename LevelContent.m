%% Level Content 


if (level == 1)
    itemListW = ["spikyNut", "phoneFlash", "keys", "stick"]  
    itemListF = ["funGuy",  "crumbs", "apple"]
    npcList= ["snakes","hornets","spiders","megaToad"]
    npcHP = [6,3,2,10]
    npcATk = [-5,-2,-2,-8]
    npcID = zeros(1,length(npcList))
    for i = 1:length(npcList)
    npcID(i)= sum(double(char(npcListL1(i))))
    end
    npcFreq= [3,3,3,1]

end

if (level == 2)
    itemListW =["birchWalkingStick", "metalLid"]
    itemListF = ["cannedFood","catTail", "murkyWatah"]
    npcList= ["wild dogs","rats","biting Gnats","racoon"]
    npcHP = [6,3,2,20]
    npcATk= [-6,-5,-3,-10]
    npcID = zeros(1,length(npcList))
    for i = 1:length(npcList)
    npcID(i)= sum(double(char(npcListL1(i))))
    end
    npcFreq=[4,4,2,1]
end

if (level == 3)
    itemListW = ["scrapMetal", "bearSpray"]
    itemListF = ["blueberries", "deadBird"]
    npcList= ["wolves","mosquito","owl","Bear"]
    npcHP= [6,3,10,20]
    npcATk= [-7,-3,-5,-15]
    npcID = zeros(1,length(npcList))
    for i = 1:length(npcList)
    npcID(i)= sum(double(char(npcListL1(i))))
    end
    npcFreq= [4,6,3,1]
    


end 
