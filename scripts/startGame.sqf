shooter = objNull;
private _civFaces = ["PersianHead_A3_01", "PersianHead_A3_02", "PersianHead_A3_03"]; // TO DO: ADD THESE TO GAME SETTINGS
private _securityFaces = ["WhiteHead_01","WhiteHead_02","WhiteHead_03","WhiteHead_04","WhiteHead_05","WhiteHead_06","WhiteHead_07","WhiteHead_08","WhiteHead_09","WhiteHead_10","WhiteHead_11","WhiteHead_12","WhiteHead_13","WhiteHead_14","WhiteHead_15","WhiteHead_16","WhiteHead_17","WhiteHead_18","WhiteHead_19","WhiteHead_20"];
private _SideHQ = createCenter east;
private _SideHQ = createCenter resistance;
Insurgents = createGroup east;
Civilians = createGroup resistance;
//_totalCivs = count _civGuys;

//Begin Startup Sequence
{_x enableSimulationGlobal false} forEach playableUnits; 
	sleep 2;
	
	//Set teams

	bluGuys = [];
	{if ((side _x) == west) then {bluGuys pushBack _x}} forEach playableUnits; // Create BLUFOR player group.

	_civGuys = [];
	{if ((side _x) == civilian) then {_civGuys pushBack _x}} forEach playableUnits;
	_civGuys = _civGuys call BIS_fnc_arrayShuffle; // Randomize civilian player order.

	redGuys = _civGuys select [0, ((count _civGuys) / 3)]; // Create and select OPFOR player group.
	
	if ((paramsArray select 7) > 0) then {
		if (count redGuys > count bluGuys) then { redGuys resize (count bluGuys) }; // Prevent there from being more OPFOR than BLUFOR.
	};

	if (((paramsArray select 8) > 0) && (count _civGuys > count bluGuys)) then {
		if (count bluGuys > count redGuys) then { redGuys = +_civGuys; redGuys resize (count bluGuys) }; // Prevent there from being more BLUFOR than OPFOR.
	};

	greenGuys = (_civGuys - redGuys); // Create INDEP player group.
	
	sleep 2;

	//Move civilians and change appearance
	private _civSpawns = ((getMissionLayerEntities "Civilian Spawns") select 0) call BIS_fnc_arrayShuffle;
	private _i = 0;
	{
		_x setPosASL getPosASL (_civSpawns select _i);
		_i = _i + 1;
		[_x, (selectRandom _civFaces)] remoteExec ["setFace", 0, _x]; 
		removeGoggles _x;
	} forEach _civGuys;

	_civguys joinSilent Civilians;
	sleep 1;
	
	// Change sides, Give Radios And Unfreeze Players

	{
		[_x] joinSilent grpNull;
	} forEach greenGuys;

	{
		[_x] joinSilent Insurgents;
		_x setVariable ["beenContacted", false, true];
	} forEach redGuys;
	

	{
		_x addItem bluforRadio;
		[_x, (selectRandom _securityFaces)] remoteExec ["setFace", 0, _x]; 
	} forEach bluGuys;

	publicVariable "redGuys";
	publicVariable "greenGuys";
	publicVariable "bluGuys";


	//Court Martial system
	/*if (paramsArray select 2 == 1) then
	{
		{
			_x addEventHandler ["KIlled", {
		[_this select 1] execVM "scripts\court.sqf";
		}];
		} forEach greenGuys;
	};
	*/
	sleep 1;

{_x enableSimulationGlobal true} forEach playableUnits;
[player,true] remoteExec ["allowDamage"];

["scripts\showRoles.sqf"] remoteExec ["execVM"];

["scripts\shop\setupShop.sqf"] remoteExec ["execVM", 0, false];

//[[redGuys, greenGuys], "scripts\getContact.sqf"] remoteExec ["execVM", 0, false]

execVM "scripts\checkWin.sqf";