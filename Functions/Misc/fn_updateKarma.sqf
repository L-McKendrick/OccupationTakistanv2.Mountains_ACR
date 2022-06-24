/*
	Author: McKendrick

	Description:
		Returns the Karma value of a player from their profileNameSpace

	Parameter(s): 
		0 : Number - Karma to add
		1 : Array
			0 : Boolean - Enforce karma limit. (Default: false)
			1 : Num - Minimum karma. (Default: 0)
			2 : Num - Max karma. (Default: 10)
		2 : Boolean - Reset Karma to default. (Default: false)

	Returns:
		Resulting karma value.

	Examples:
		_karma = [0] call occupation_fnc_updateKarma;
*/
if (!hasInterface) exitWith {};

params [ 
	"_numToAdd", ["_limitKarma", [false, 0, 10]], ["_resetKarma", false]
];

if (_resetKarma) then { profileNamespace setVariable ["SIA_Occupation_Karma", nil] };

private _karma = profileNamespace getVariable ["SIA_Occupation_Karma", 5];

if (_numToAdd != 0) then {

	_karma = _karma + _numToAdd;
	if (_limitKarma select 0) then {
		_limitKarma params ["", "_min","_max"];
		if (_karma > _max) then { _karma = _max };
		if (_karma < _min) then { _karma = _min };
	};
	profileNameSpace setVariable ["SIA_Occupation_Karma", _karma];
	saveProfileNamespace;
};

_karma;