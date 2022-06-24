//variables
if (!isMultiplayer) exitWith {};
gameStarted = false;
publicVariable "gameStarted";

timeLeft = 1;

_hours = paramsArray select 0;
_sites = selectRandom ((getMissionLayerEntities "Cache Sites") select 0);

//Set time of day
if (_hours == -1) then {
skipTime selectRandom [10, 18, 0, 6];
} else {
skipTime _hours;
};

//Civilians starting position


//cache position
cache setPosASL getPosASL _sites;

//Update map markers
"cMark" setMarkerAlpha 0;
"cMark" setMarkerPos cache;

// Wait until all players are loaded
waitUntil {
  {getPlayerUID _x != ""} count allPlayers == count allPlayers
};

sleep 3;

gameStarted = true;
publicVariable "gameStarted";

execVM "scripts\startGame.sqf";