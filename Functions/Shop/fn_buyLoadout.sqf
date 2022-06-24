
params [
	"_loadout", ["_weapons", [], [[]]], ["_items", [], [[]]], "_radio", "_goggles"
];

player setUnitLoadout _loadout;

{ player addItem _x } forEach _items;

{ player addWeapon _x } forEach _weapons;


if (!([player, _radio] call acre_api_fnc_hasKindOfRadio)) then { player addItem _radio };

player addGoggles _goggles;

true;
