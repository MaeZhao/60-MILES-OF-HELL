%% Update Health 
function UpdateHealth(healthUD)
if PHealthPoint == 100
    updated = true;
elseif PHealthPoint == 0
    update = false;
    %call end screen 
else 
    choice = randi(1,2)
    healthupdate = healthUD
    PHealthPoint= PHealthPoint + healthupdated
end