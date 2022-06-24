waitUntil { sleep 1; ( ( ({alive _x} count bluGuys == 0) ||  ({alive _x} count redGuys == 0) || !([true] call BIS_fnc_countdown) ) && gameStarted ) };

private _winners = [west, independent];
private _ending = "bluforWin";

if (!([true] call BIS_fnc_countdown)) then { _ending = "timerWin"; _winners = [independent] } else {

	// Win if all blufor dead
	if ({alive _x} count bluGuys == 0) then { _winners = [east]; _ending = "opforWin" };

};

[[_winners, _ending],"scripts\showEnd.sqf"] remoteExec ["execVM"];