private _arr = (shopLists select currentShopId) select (_this select 0);

_arr params ["","_type","_id","_price"];

private _loadout = [];

switch (_type) do {

	case "loadout" : {

		switch (_id) do {
			// Rifleman
			case "r" : { _loadout = [] };

			// Medic
			case "medic" : { 
				_loadout = [];
				[player, 1] call ace_medical_treatment_fnc_isMedic;
			};

			// Breacher
			case "breacher" : { _loadout = []; player addItem "ACE_M84" };

			// UAV
			case "uav" : { _loadout = [] };

			// marksman
			case "marksman" : { _loadout = [] };

			// Medium Anti-tank
			case "at" : { _loadout =  };

			// Autorifleman
			case "ar" : { _loadout =  };
			
			// Grenadier
			case "gr" : { _loadout =  };

			// SpecOp
			case "spec" : { _loadout =[] };

			// Translator
			case "translator" : { 
				_loadout = [];
				["en", "pa"] call acre_api_fnc_babelSetSpokenLanguages;
			};

			default { [" Loadout not listed in config: %1", _id] call BIS_fnc_error }; // Log error if loadout not listed.
		};

		player setUnitLoadout _loadout; // Apply the chosen loadout from the switch.

		if (side player == west) then {
			player addWeapon "rhsusf_weap_m9";
			private _items = ["FirstAidKit","FirstAidKit","rhs_mag_m67","SmokeShell","rhsusf_mag_15Rnd_9x19_JHP"];
			{player addItem _x} forEach _items;
			if (!([player, bluforRadio] call acre_api_fnc_hasKindOfRadio)) then { player addItem bluforRadio };
			player addGoggles "rhs_googles_black";
		};
	};

	case "weapon" : {

		switch (_id) do {

			case "mosin" : {  _outcome = ["rhs_weap_m38"] call occupation_fnc_buyWeapon; hint str _outcome };

			case "enfield" : { _outcome = ["UK3CB_Enfield"] call occupation_fnc_buyweapon };

			case "garand" : { _outcome = ["rhs_weap_m1garand_sa43"] call occupation_fnc_buyWeapon };

			case "ak47" :  { _outcome = ["uk3cb_ak47"] call occupation_fnc_buyWeapon };

			case "rpk" :  { _outcome = ["UK3CB_RPK", 1, "rhs_75Rnd_762x39mm"] call occupation_fnc_buyWeapon };

			case "pkm" :  { _outcome = ["rhs_weap_pkm", 1] call occupation_fnc_buyWeapon };

			case "ppsh41" :  { _outcome = ["uk3cb_ppsh41", 2] call occupation_fnc_buyWeapon };

			case "mg3" :  { _outcome = ["UK3CB_MG3", 2] call occupation_fnc_buyWeapon };

			case "svd" :  { _outcome = ["UK3CB_SVD_OLD"] call occupation_fnc_buyWeapon };

			case "vss" :  { _outcome = ["rhs_weap_vss"] call occupation_fnc_buyWeapon };
			

			case "akm_gp25" :  { 
				_outcome = ["rhs_weap_akm_gp25", 3, "rhs_30Rnd_762x39mm"] call occupation_fnc_buyWeapon; 
				player addWeaponItem ["rhs_weap_akm_gp25", "rhs_VOG25", true]; 
			};

			case "savz61" :  { _outcome = ["rhs_weap_savz61"] call occupation_fnc_buyWeapon };		

			case "akm" : { _outcome = ["rhs_weap_akm", 3, "rhs_30Rnd_762x39mm"] call occupation_fnc_buyWeapon };

			case "sks" : { _outcome = ["uk3cb_sks_01_sling"] call occupation_fnc_buyWeapon };

			case "bhp" : { _outcome = ["UK3CB_BHP"] call occupation_fnc_buyWeapon };

			case "rpg7" : { ["rhs_weap_rpg7", 2, "rhs_rpg7_PG7VL_mag"] call occupation_fnc_buyWeapon };

			case "rpg26" : { _outcome = ["rhs_weap_rpg26", 0] call occupation_fnc_buyWeapon };


			default { ["Weapon not listed in config: %1", _id] call BIS_fnc_error }; // Log error if loadout not listed.
		};
	};

	case "item" : {
	
		switch (_id) do {

			case "maglite" : { _outcome = ["ACE_Flashlight_Maglite_ML300L", 0] call occupation_fnc_buyWeapon };

			case "binos" : { _outcome = ["binocular", 0] call occupation_fnc_buyWeapon };

			case "radio" : { _outcome = [civRadio] call occupation_fnc_buyItem };

			case "vog25" : { _outcome = ["rhs_VOG25"] call occupation_fnc_buyItem };

			case "pso1": { _outcome = ["rhs_acc_pso1m2"] call occupation_fnc_buyItem };

			default { ["Item not listed in config: %1", _id] call BIS_fnc_error }; // Log error if loadout not listed.

		};
	};

	case "equipment" : { 
		
		switch (_id) do {

			case "pouch" : { _outcome = ["UK3CB_V_Pouch", "vest"] call occupation_fnc_buyEquipment };

			case "knapsack" : { _outcome = ["UK3CB_UN_B_B_ASS","backpack"] call occupation_fnc_buyEquipment };

			case "bag" : { _outcome = ["B_Messenger_Gray_F", "backpack"] call occupation_fnc_buyEquipment };

			case "medical bag" : {
				
			};

			default { ["Equipment not listed in config: %1", _id] call BIS_fnc_error }; // Log error if loadout not listed.

		};
	};

	case "misc" : {

		switch (_id) do {

			case "translator" : {  };
		};
	};
};

myMoney = myMoney - _price;


