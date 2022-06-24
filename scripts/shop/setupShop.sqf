
{
	private _shopList = (_x select 1);
	[
		_x select 0,											// object the action is attached to
		"Open Shop",										// Title of the action
		"\a3\ui_f_oldman\data\IGUI\Cfg\holdactions\holdAction_market_ca.paa",	// Idle icon shown on screen
		"\a3\ui_f_oldman\data\IGUI\Cfg\holdactions\holdAction_market_ca.paa",	// Progress icon shown on screen
		(_x select 2),						// Condition for the action to be shown
		(_x select 3),						// Condition for the action to progress
		{},													// Code executed when action starts
		{},													// Code executed on every progress tick
		{ [(_this select 3) select 0] execVM "scripts\shop\openShop.sqf";  },				// Code executed on completion
		{},													// Code executed on interrupted
		[_shopList],													// Arguments passed to the scripts as _this select 3
		0.5,												// action duration in seconds
		10,													// priority
		false,												// Remove on completion
		false	
	] call BIS_fnc_holdActionAdd;
} forEach [[securityShop, bluforShopList, "_this distance _target < 3 && player in bluGuys", "_caller distance _target < 3"], [player, civShopList, "player inArea area_civShop && player in (greenGuys + redGuys)", "player inArea area_civShop && player in (greenGuys + redGuys)"], [cache, opforShopList, "_this distance _target < 3 && player in redGuys", "_caller distance _target < 3"]];
