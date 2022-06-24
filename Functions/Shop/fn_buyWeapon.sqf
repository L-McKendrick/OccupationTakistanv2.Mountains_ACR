/*
	Author: McKendrick

	Description:
		Adds a weapon and selected magazine type and count to player after checking if it can be added.

	Parameter(s):
		0: STRING - Classname of weapon.
		1: NUMBER - Number of magazines to add (Optional, default is 3).
		2: STRING - Classname of magazine (Optional, default is config default magazine).
	
	Returns:
		BOOLEAN -  If purchase was successful.

	Examples:
		["rhs_m4"] call occupation_fnc_buyWeapon;
*/

params [
		"_weapon",["_numOfMags", 3],["_mag", (getArray (configfile >> "CfgWeapons" >> (_this select 0) >> "magazines") select 0)]
	];

// Check if item can be bought
	if (!(primaryWeapon player == "") && (_weapon isKindOf ["Rifle", configFile >> "CfgWeapons"])) exitWith {false};
	if (!(handgunWeapon player == "") && (_weapon isKindOf ["Pistol", configFile >> "CfgWeapons"])) exitWith {false};
	if (!(secondaryWeapon player == "") && (_weapon isKindOf ["Launcher", configFile >> "CfgWeapons"])) exitWith {false};
	if (!(binocular player == "") && (_weapon isKindOf ["Binocular", configFile >> "CfgWeapons"])) exitWith {false};

player addWeapon _weapon;

if (_numOfMags > 0) then {
	player addWeaponItem [_weapon, _mag, true];
	for "_i" from 1 to _numOfMags do { player addItem _mag };
};

true;