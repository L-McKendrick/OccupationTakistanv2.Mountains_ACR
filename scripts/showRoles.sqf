["Game started!"] call occupation_fnc_displayText;
private _txt = "";
private _karma = str ([0] call occupation_fnc_updateKarma);

switch (side player) do {

	case sideSecurity : { _txt = "You are in SECURITY FORCES" };

	case sideInsurgent : {
		"cMark" setMarkerAlphaLocal 1;
		_txt = "You are an INSURGENT";
	};

	case sideCivilian : { 
		[redGuys, greenGuys] params ["_redGuys", "_civs"];

		myContact = selectRandom _redGuys;

		[myContact,
			"Join Team",
			"\a3\ui_f_oldman\data\IGUI\Cfg\holdactions\meet_ca.paa",
			"\a3\ui_f_oldman\data\IGUI\Cfg\holdactions\meet_ca.paa",
			"(_this distance _target < 3) && (alive _target) && !(captive _target) && !(_target getVariable ['beenContacted', false])",
			"_caller distance _target < 3",
			{},
			{},
			{ [_target] execVM "scripts\doContact.sqf" },
			{},
			[],
			5,
			0,
			true,
			false
		] call BIS_fnc_holdActionAdd;

		_txt = ("You are a CIVILIAN, and your insurgent contact is " + name myContact);
	};
};

[_txt + "\nKarma: " + _karma] call occupation_fnc_displayText;

player createDiaryRecord ["Diary",["Info", (_txt + "<br></br>Starting Karma: " + _karma)]];

 