/*
	Author: McKendrick

	Description:
		Return the final price based off the multipliers.

	Parameter(s):
		0: Number of raw price.
		1: Number of multiplier.
		2: (Optional) Number of mission coeffecient.

	Examples:
		[10, 100] call occupation_fnc_getPrice;
*/

params [
	["_price", 1], ["_mult", 1], ["_coeff", shopPriceCoeff]
];

private _finalPrice = _price * _mult * _coeff;

_finalPrice = [_finalPrice, 0] call BIS_fnc_cutDecimals; // Remove any decimals as loose change is cringe

_finalPrice;

