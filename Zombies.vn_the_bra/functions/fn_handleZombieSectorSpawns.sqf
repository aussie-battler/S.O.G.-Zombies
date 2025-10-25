/*
    fn_handleZombieSectorSpawns.sqf
    Teleports a zombie to a random unlocked spawn.
    
    Params:
        0: OBJECT - zombie unit
*/

// Define the debug message
//private _message = "[DEBUG] handleZombieSectorSpawns called.";
// Use remoteExec to send the message to all clients
//[_message] remoteExec ["systemChat", 0];

params ["_unit"];

//_unit setPos (getMarkerPos (selectRandom BAC_randomTeleports));

private _availableSpawns = missionNamespace getVariable ["BAC_availableSpawns", []];

// Fallback if no zones unlocked
if (_availableSpawns isEqualTo []) exitWith {
    diag_log "⚠️ No available spawns! Zombie not teleported.";
};

// Pick a random spawn marker
private _chosenMarker = selectRandom _availableSpawns;
diag_log ["[DEBUG] handleZombieSectorSpawns called. Available spawns: %1", _availableSpawns];
//systemChat format ["[DEBUG] handleZombieSectorSpawns called. Available spawns: %1", _availableSpawns];
_unit setPos (getMarkerPos _chosenMarker);
