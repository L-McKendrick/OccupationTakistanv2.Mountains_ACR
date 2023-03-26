waitUntil {!isNull player};

karmaMin = paramsArray select 4;
karmaMax = paramsArray select 5;
karmaDefault = [(karmaMax * ((paramsArray select 6) / 100)), 0] call BIS_fnc_cutDecimals;

if (!(isDedicated)) then {
	player addEventHandler ["inventoryOpened","_nul=execVM 'scripts\inventoryCheck.sqf'"];

	if (paramsArray select 3 == 1) then { [0, false, true] call occupation_fnc_updateKarma; }; // Reset Karma param
};

["en","English"] call acre_api_fnc_babelAddLanguageType;
["pa","Pashto"] call acre_api_fnc_babelAddLanguageType;

if (side player == west) then {
		["en"] call acre_api_fnc_babelSetSpokenLanguages;
} else {
		["pa"] call acre_api_fnc_babelSetSpokenLanguages;
};

if (side player == sideLogic) then { ["en", "pa"] call acre_api_fnc_babelSetSpokenLanguages }; // Enable all languages for spectator? 

#include "gameSettings.hpp"

// Allow civilian and insurgents to see eachother's names
if (isServer) then {
	sideInsurgent setFriend [sideCivilian, 1];
	sideCivilian setFriend [sideInsurgent, 1];
};