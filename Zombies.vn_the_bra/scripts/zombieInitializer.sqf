[] spawn {
		[_this, 10000] execVM "scripts\taskRushScripts\fn_taskRush.sqf";
		[_this, _hordeDifficulty] call WBK_LoadAIThroughEden;
		[_this, 0.75] call BAC_fnc_forceKillOnDamage;
		this allowDamage true;
		this setPos (getMarkerPos (selectRandom BAC_randomTeleports));
}
