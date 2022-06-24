/*
	Author: McKendrick

	Description:
		Dynamically updates text of a control from the corresponding index.

	Parameter(s):
		0: idc
		1: number

	Returns:
		NONE

	Examples:
		[_control, _selectedIndex] call occupation_fnc_updateInfo;
*/

params ["_control", "_selectedIndex"];

(currentShopList select _selectedIndex) params ["_text", "_type", "_item", "_price"];

ctrlSetText [1002, ("Cost: $" + str _price)]; // PRICE TEXT

ctrlSetText [1003, ("Type: " + _type)]; // TYPE TEXT

ctrlSetText [1004, _text]; // ITEM TEXT

private _str = "";
private _config = "cfgWeapons";
switch (_type) do {

	case "loadout" : { _str = (_item select 0) select 0 };

	case "weapon" : { _str = (_item select 0) };

	case "item" : { if ((_item select 0) isKindOf ["CA_Magazine", configFile >> "CfgMagazines"]) then {_config = "CfgMagazines"}; _str = (_item select 0) };

	case "equipment" : { if ((_item select 1) == "backpack") then { _config = "cfgVehicles" }; _str = (_item select 0) };

	case "misc" : {};
};
private _picture = getText (configFile >> _config >> _str  >> "picture");
ctrlSetText [1200, _picture];