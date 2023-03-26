params ["_winners","_ending"];
private _victory = true;
if (!(side group player in _winners)) then { _victory = false };
if (side group player == sideCivilian && !alive player) then { _victory = false }; // Civilian player loses if they are dead, wins if they are alive.

if (player in (redGuys + greenGuys + bluGuys)) then {
	private _karma = 0;
	private _karmaToAdd = 0;
	if (_victory) then { _karmaToAdd = 3 } else { _karmaToAdd = ([(([0] call occupation_fnc_updateKarma) / 4), 0] call BIS_fnc_cutDecimals) * -1; }; // +3 points for winning, lose a third of your karma if your game lose.
	_karma = [_karmaToAdd, [true, karmaMin, karmaMax]] call occupation_fnc_updateKarma;
};

[_ending, _victory] call BIS_fnc_endMission;
sleep 1;

["\n\nFinal Karma:" + (str ([0] call occupation_fnc_updateKarma))] call occupation_fnc_displayText;