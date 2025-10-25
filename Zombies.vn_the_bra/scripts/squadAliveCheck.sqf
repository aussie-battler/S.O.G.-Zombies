// Add the MPKilled event handler to all players
{
    _x addMPEventHandler ["MPKilled", {
        params ["_unit", "_killer", "_instigator", "_useEffects"];
        
        // Call the function to check if all specified players are dead
        if (isServer) then {
            checkAllPlayersDead();
        };
    }];
} forEach allPlayers;

// Function to check if all specified players are dead
checkAllPlayersDead = {
    // Custom condition to check if all players are dead or non-existent
    if ((isNil "p1" || !alive p1) && 
        (isNil "p2" || !alive p2) && 
        (isNil "p3" || !alive p3) && 
        (isNil "p4" || !alive p4)) then {
        
        // If all players are dead, end the mission
        hint "All players are dead. Ending the mission.";
        endMission "END1"; // Use the appropriate end mission code
    };
};


//(isNil "p1" || !alive p1) && (isNil "p2" || !alive p2) && (isNil "p3" || !alive p3) && (isNil "p4" || !alive p4)
