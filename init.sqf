waitUntil {!isNull player};

if (!(isDedicated)) then {
	player addEventHandler ["inventoryOpened","_nul=execVM 'scripts\inventoryCheck.sqf'"];
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