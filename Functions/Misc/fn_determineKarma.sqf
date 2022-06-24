/*
	Author: McKendrick

	Description:
		Determine Karma values

	Parameter(s): 
		0 : side - victim
		1 : side - killer
		2 : array of sides used for determining.  

	Returns:
		Resulting karma value.

	Examples:
		_karma = [0] call occupation_fnc_determineKarma;
*/

params [
	"_sideVictim", "_sideKiller", ["_arrSides", [west, east, civilian]]
];

_arrSides params ["_sideSecurity","_sideInsurgent","_sideCivilian"];

private _retValue = 0;

if (_sideVictim != _sideKiller) then {

	switch (_sideVictim) do 
	{
		case _sideSecurity : { _retValue = if (_sideKiller == _sideInsurgent) then [{ 2 }, { -1 }] }; // +2 points for Insurgent killing Security, -1 point for Civilian killing Security
		
		case _sideInsurgent : { _retValue = if (_sideKiller == _sideSecurity) then [{ 2 }, { -1 }] }; // +2 points for Security killing Insurgent, -1 point for Civilian killing Insurgent

		case _sideCivilian : { _retValue = if (_sideKiller == _sideSecurity) then [{ -3 }, { -1 }] }; // -3 points for Security killing Civilian, -1 point for Insurgent killing Civilian

		default { ["Bad side: %1", _sideVictim] call BIS_fnc_error };
	};

} else {
	_retValue = -1; // -1 points for friendly fire
};
hint str _reValue;
_retValue;