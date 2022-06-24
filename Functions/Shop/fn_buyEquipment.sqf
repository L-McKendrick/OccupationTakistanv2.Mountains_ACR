/*
	Author: McKendrick

	Description:
		Checks if the given equipment item can be added and adds it.

	Parameter(s):
		0: STRING - Classname of equipment to add.
		1: STRING - Slot to add to.

	Returns:
		BOOLEAN - Whether the given class was able to be added.

	Examples:
		["U_C_Poloshirt_blue", "uniform"] call occupation_fnc_buyEquipment;
*/

params ["_equipment", "_type"];

private _items = [];
private _retValue = true;
switch  (_type) do {

	case "uniform" : {
		_items = uniformItems player;
		removeUniform player;
		player forceAddUniform _equipment;
		{ player addItemToUniform _x } forEach _items;
	};

	case "vest" : {
		_items = vestItems player;
		removeVest player;
		player addVest _equipment;
		{ player addItemToVest _x } forEach _items;
	};

	case "backpack" : {
		_items = backpackItems player;
		clearAllItemsFromBackpack player;
		player addBackpack _equipment;
		{ player addItemToBackpack _x } forEach _items;	
	};

	case "headgear" : {
		player addHeadgear _equipment;
	};

	case "goggles" : {
		player addGoggles _equipment;
	};

	default { ["Bad type: %1", _type] call BIS_fnc_error; _retValue = false };
};

//if (!(_equipment in (items player + assignedItems player))) exitWith { false }; TO DO: FIND WAY TO CONFIRM ITEM WAS ADDED
_retValue;