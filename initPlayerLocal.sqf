[] call BIS_fnc_showMissionStatus;
execVM "changelog.sqf";

params[ "_player", "_didJIP" ];

if ( !_didJIP ) then {
	
	//Wait for mission to start
	waitUntil{ time > 0 };
	
	//If a count down has not been started

	if ( isNil "bis_fnc_countdown_time" ) then {
		private _time = paramsArray select 1;
		timeLeft = [ _time, true] call BIS_fnc_countdown;
	}
}; 

waitUntil {!isNull player && !isNil "gameStarted"};
if (!gameStarted) then {
	sleep 0.1;	
	player allowDamage false;
	[player, false] remoteExec ["enableSimulationGlobal", 2];
	["Please wait..."] call occupation_fnc_displayText;

	// ======== ADD EVENT HANDLERS ========

	player addEventHandler ["HandleRating", { 0 }]; // Disable rating system.
	player addEventHandler ["HandleScore", {false}]; // Disable scoreboard update.

	player addEventHandler ["Take", {
		params ["_unit", "_container", "_item"];
		if (_item == "Money") then { 
				player removeItem _item;
			if (side player == sideSecurity) then {
				_container addMagazineCargoGlobal ["Money",1];
				["Better not take the locals' money...", "PLAIN DOWN"] call occupation_fnc_displayText;
			} else {
				private _num = [(random [1, 50, 100]),0] call BIS_fnc_cutDecimals;
				myMoney = myMoney + _num;
				[("+ $" + str _num), "PLAIN DOWN"] call occupation_fnc_displayText;
			};
		};
	}]; 

	player addEventHandler ["Fired", {
	if ( (_this select 2) isEqualTo "HandGrenade_Stone" ) then
		{
			(_this select 6) spawn
			{
				UIsleep 2.5;
				deleteVehicle _this;
			};
		};
	}];

	// Add SIA Karma Event Handler
	player addEventHandler ["Killed", {
		params ["_unit", "_killer", "_instigator", "_useEffects"];
		private _karma = [(side group _unit),(side group _instigator),[sideSecurity,sideInsurgent,sideCivilian]] call occupation_fnc_determineKarma;
		[_karma] remoteExecCall ["occupation_fnc_updateKarma", _instigator];
	}];

	// Starting stuff
	player linkItem "ItemGPS";
	player addItem "FirstAidKit";

} else {
	sleep 0.1;
	player setDamage 1;
	1 cutText ["Game has already started! Please wait for the next one.","PLAIN",-1,true];
};


// Calculate Money
waitUntil {!isNil "shopPriceCoeff"};
myMoney = ([0] call occupation_fnc_updateKarma) * shopPriceMult;

/*
player addAction ["Test blue", {[bluforShopList] execVM "scripts\shop\openShop.sqf"}];
player addAction ["Test CIv", {[civShopList] execVM "scripts\shop\openShop.sqf"}];
player addAction ["Test bad", {[opforShopList] execVM "scripts\shop\openShop.sqf"}];
*/

