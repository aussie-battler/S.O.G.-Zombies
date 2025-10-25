/*
    fn_ZombieSectorSpawnsIndex.sqf
    Updates the master list of available zombie spawns
*/

private _allUnlocked = missionNamespace getVariable ["BAC_unlockedZones", []];
private _allSpawns = [];

{
    private _zoneMarkers = missionNamespace getVariable [format ["BAC_zoneMarkers_%1", _x], []];
    { _allSpawns pushBack _x } forEach _zoneMarkers;
} forEach _allUnlocked;

missionNamespace setVariable ["BAC_availableSpawns", _allSpawns];
publicVariable "BAC_availableSpawns";

// Debug
diag_log format ["📌 Available zombie spawns updated: %1 points", count _allSpawns];
