params [
	["_shopList", [[]]]
];

private _list = 1000;

createDialog "dialogShop";

ctrlSetText [1001, ("Your Money: $" + (str myMoney))]; // Update money display

currentShopList = _shopList;

{ lbAdd [_list, (_x select 0)] } forEach _shopList; // Add list items to menu.

lbSetCurSel [_list, 0] // Select the first option by default;