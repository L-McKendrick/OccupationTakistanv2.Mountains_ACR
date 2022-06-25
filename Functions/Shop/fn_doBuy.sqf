/*
	Author: McKendrick

	Description:
		<function description>

	Parameter(s):
		0: STRING - (Not used) display name of item.
		1: STRING - Type of item.
		2: ARRAY - Depends on the type lmao.
		3: NUMBER - Price of item.
		4: CODE - expression to run.

	Returns:
		NOTHING
	Examples:
*/

private _arr = currentShopList select (_this select 0);

_arr params [
	"_text", "_type", "_item", ["_price", 0], ["_expression", ""]
];

if (myMoney < _price) then {

	["Cannot afford this!", "PLAIN DOWN"] call occupation_fnc_displayText;
	
} else {
	private _success = false;
	switch (_type) do {

		case "loadout" : { _success = ([_item] + securityItems) call occupation_fnc_buyLoadout;};

		case "weapon" : { _success =  _item call occupation_fnc_buyWeapon; };

		case "item" : { _success =  _item call occupation_fnc_buyItem;  };

		case "equipment" : { _success =  _item call occupation_fnc_buyEquipment;  };

		case "misc" : { _success = true };

		default { ["Type not listed in config: %1", _id] call BIS_fnc_error };
	};

	if (!(_expression == "")) then { call compile _expression };

	if (_success) then { myMoney = myMoney - _price; [("Purchased " + _text + " for $" + str _price), "PLAIN DOWN"] call occupation_fnc_displayText; } else { ["Unable to buy this!", "PLAIN DOWN"] call occupation_fnc_displayText; };
};

ctrlSetText [1001, ('Your Money: $' + (str myMoney))]; // update shop money