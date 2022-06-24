/*
	Author: McKendrick

	Description:
		<function description>

	Parameter(s):
		0: STRING - Classname of item/equipment/attachment to add.
		1: BOOLEAN - Whether or not to link the item.
		2: NUMBER - Amount of x to add.

	Returns:
		BOOLEAN - Whether the given item was able to be added (does NOT check if count was reached in some cases).

	Examples:
		["binocular", true] call occupation_fnc_buyItem
*/

params [
	"_item", ["_linkItem", true], ["_numOfItems", 1]
];

if (_numOfItems <= 0) exitWith { false }; // Return false is number of items is less than 1.

if (_linkItem && (_numOfItems == 1) && !(_item in itemsWithMagazines player)) then {
	player linkItem _item;
	if (_item in itemsWithMagazines player) exitWith { true };
};

/* GOTTA WATI FOR ARMA 2.10 APPARENTLY :(
if (_numOfItems == 1) then {

	if ((primaryWeapon player) canAdd _item) exitWith { player addWeaponItem [primaryWeapon player, _item]; true };
	if ((handgunWeapon player) canAdd _item) exitWith { player addWeaponItem [handgunWeapon player, _item]; true };
	if ((secondaryWeapon player) canAdd _item) exitWith { player addWeaponItem [secondaryWeapon player, _item]; true };  

};
*/

if (!(player canAdd [_item,_numOfItems])) exitWith { false };


for "_i" from 1 to _numOfItems do { player addItem _item };

true;