/*
SHOP ARRAYS
0 : Display Text
1 : Item Type
2 : Item ID
3 : Cost Multiplier
*/

private _mult = shopPriceMult;


private _r = [["rhs_weap_m4a1_carryhandle","","","",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],[],""],[],[],["rhs_uniform_cu_ocp_10th",[]],["rhsusf_iotv_ucp_Rifleman",[["rhs_mag_30Rnd_556x45_M855A1_Stanag",5,30]]],[],"rhsusf_ach_helmet_ucp","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
private _breacher = [["rhs_weap_M590_8RD","","","",["rhsusf_5Rnd_00Buck",5],[],""],[],[],["rhs_uniform_cu_ocp_10th",[]],["rhsusf_iotv_ucp_Rifleman",[["rhsusf_5Rnd_00Buck",5,5],["rhsusf_5Rnd_Slug",5,5]]],["rhsusf_falconii_breach",[["ACE_Clacker",1],["rhsusf_m112_mag",2,1],["ClaymoreDirectionalMine_Remote_Mag",1,1]]],"rhsusf_ach_helmet_ucp","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
private _medic =[["rhs_weap_m4a1_carryhandle","","","",["rhs_mag_30Rnd_556x45_Mk318_Stanag",30],[],""],[],[],["rhs_uniform_cu_ocp_10th",[]],["rhsusf_iotv_ucp_Medic",[["rhs_mag_30Rnd_556x45_M855A1_Stanag",5,30]]],["rhsusf_falconii_sarc",[["ACE_tourniquet",5],["ACE_splint",5],["ACE_EarPlugs",5],["ACE_epinephrine",5],["ACE_morphine",5],["ACE_surgicalKit",1],["ACE_bloodIV",2],["ACE_bloodIV_500",3],["ACE_bloodIV_250",4],["ACE_fieldDressing",25],["kat_AED",1],["Chemlight_red",1,1]]],"rhsusf_ach_helmet_ucp_alt","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
private _uav = [["rhs_weap_m4_carryhandle","","","",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],[],""],[],[],["rhs_uniform_cu_ocp_10th",[]],["rhsusf_iotv_ucp_Rifleman",[["rhs_mag_30Rnd_556x45_M855A1_Stanag",5,30]]],["B_UAV_01_backpack_F",[]],"rhsusf_ach_helmet_ucp","",[],["ItemMap","B_UavTerminal","","ItemCompass","ItemWatch",""]];
private _marksman =[["rhs_weap_m14ebrri_leu","","","rhsusf_acc_ACOG3",["rhsusf_20Rnd_762x51_m118_special_Mag",20],[],"rhsusf_acc_harris_bipod"],[],[],["rhs_uniform_cu_ocp_10th",[]],["rhsusf_iotv_ucp_Rifleman",[["rhsusf_20Rnd_762x51_m118_special_Mag",3,20]]],[],"rhsusf_ach_helmet_ucp","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
private _at = [["rhs_weap_m4_carryhandle","","","",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],[],""],["rhs_weap_M136","","","",["rhs_m136_mag",1],[],""],[],["rhs_uniform_cu_ocp_10th",[]],["rhsusf_iotv_ucp_Rifleman",[["rhs_mag_30Rnd_556x45_M855A1_Stanag",5,30]]],[],"rhsusf_ach_helmet_ucp","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
private _ar = [["rhs_weap_m249_light_S","","","",["rhsusf_100Rnd_556x45_mixed_soft_pouch_coyote",100],[],"rhsusf_acc_saw_lw_bipod"],[],[],["rhs_uniform_cu_ocp_10th",[]],["rhsusf_iotv_ucp_SAW",[["rhsusf_100Rnd_556x45_mixed_soft_pouch_coyote",3,100]]],[],"rhsusf_ach_helmet_ucp","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
private _gr = [["rhs_weap_m4a1_carryhandle_m203","","","",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],["rhs_mag_M433_HEDP",1],""],[],[],["rhs_uniform_cu_ocp_10th",[]],["rhsusf_iotv_ucp_Grenadier",[["rhs_mag_30Rnd_556x45_M855A1_Stanag",5,30]]],["rhsusf_assault_eagleaiii_ucp",[["rhs_mag_M433_HEDP",3,1],["rhs_mag_m4009",3,1],["UGL_FlareWhite_F",3,1],["1Rnd_Smoke_Grenade_shell",3,1]]],"rhsusf_ach_helmet_headset_ucp_alt","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
private _spec = [["rhs_weap_hk416d10_LMT_d","rhsusf_acc_nt4_tan","rhsusf_acc_anpeq15_wmx_light","rhsusf_acc_eotech_552_d",["rhs_mag_30Rnd_556x45_Mk318_PMAG_Tan",30],[],"rhsusf_acc_kac_grip"],[],["rhsusf_weap_m9","","","",[],[],""],["rhs_uniform_g3_mc",[]],["rhsusf_mbav_rifleman",[["rhs_mag_30Rnd_556x45_Mk318_PMAG_Tan",5,30]]],[],"rhsusf_opscore_mc_cover_pelt_cam","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
private _eod = [["rhs_weap_m4a1_carryhandle","","","",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],[],""],[],[],["rhs_uniform_cu_ocp_10th",[]],["rhsusf_iotv_ucp_Repair",[["rhs_mag_30Rnd_556x45_M855A1_Stanag",5,30]]],["rhsusf_assault_eagleaiii_ucp",[["ACE_DefusalKit",1],["ToolKit",1],["rhsusf_m112_mag",1,1]]],"rhsusf_ach_helmet_ESS_ucp","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
private _translator = [["UK3CB_M16A2","","","",["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],[],""],[],[],["UK3CB_ANA_B_U_CombatUniform_01_SPEC4CE",[]],["UK3CB_ANA_B_V_RFL_Vest_WDL_01",[["rhs_mag_30Rnd_556x45_M855A1_Stanag",5,30]]],[],"UK3CB_ANA_B_H_6b27m_SPEC4CE","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];

bluforShopList = [
	["Rifleman", "loadout", _r, 0.25], 
	["Medic", "loadout", _medic, 0.35, "player setUnitTrait ['Medic', true];"], 
	["Breacher", "loadout", _breacher, 0.4], 
	["UAV Operator", "loadout", _uav, 0.8], 
	["Marksman", "loadout", _marksman, 0.85], 
	["Rifleman (AT)", "loadout", _at, 0.6], 
	["Autorifleman", "loadout", _ar, 0.7], 
	["Grenadier", "loadout", _gr, 0.75], 
	["EOD Specialist", "loadout", _eod, 0.65, "player addItemToBackpack 'ACE_VMM3'; player setUnitTrait ['explosiveSpecialist ', true]"], 
	["Spec-Op", "loadout", _spec, 1], 
	["Translator", "loadout", _translator, 0.45, "[player, (selectRandom ['PersianHead_A3_01', 'PersianHead_A3_02', 'PersianHead_A3_03'])] remoteExec ['setFace', 0, true]; ['en', 'pa'] call acre_api_fnc_babelSetSpokenLanguages"], 
	["M67 Grenade", "item", ["rhs_mag_m67"], 0.05], 
	["White Smoke Grenade", "item", ["rhs_mag_an_m8hc"], 0.02], 
	["m84 Stun Grenade", "item", ["ACE_M84"], 0.03], 
	["AN-M14 Incendiary Grenade", "item", ["ACE_M14"], 0.04], 
	["FAK", "item", ["FirstAidKit"], 0.02], 
	["Cable Ties x3", "item", ["ACE_CableTie", false, 3], 0.02], 
	["M552 CCO Sights", "item", ["rhsusf_acc_eotech_552", true], 0.03], 
	["WMX Flashlight", "item", ["rhsusf_acc_wmx_bk"], 0.025], 
	["AN/PVS-15 NVGs", "item", ["rhsusf_ANPVS_15", true], 0.08]
];

civShopList = [
	["Rocks", "item", ["HandGrenade_stone",false, 3], 0],
	["Mosin", "weapon", ["rhs_weap_m38"], 0.45], 
	["Lee Enfield", "weapon", ["UK3CB_Enfield"], 0.5], 
	["M1 Garand", "weapon", ["rhs_weap_m1garand_sa43"], 0.55], 
	["AK-47", "weapon", ["uk3cb_ak47"], 0.6], 
	["AKM", "weapon", ["rhs_weap_akm"], 0.7], 
	["SKS", "weapon", ["uk3cb_sks_01_sling"], 0.8], 
	["Browning HP", "weapon", ["UK3CB_BHP"], 0.3], 
	["Flashlight", "weapon", ["ACE_Flashlight_Maglite_ML300L", 0], 0.02], 
	["Binoculars", "weapon", ["binocular", 0], 0.075], 
	["Hip Pouch", "equipment", ["UK3CB_V_Pouch", "vest"], 0.05], 
	["Knapsack Backpack", "equipment", ["UK3CB_UN_B_B_ASS","backpack"], 0.07], 
	["Messenger Backpack", "equipment", ["B_Messenger_Gray_F", "backpack"], 0.08], 
	["FAK", "item", ["FirstAidKit"], 0.05], 
	["Medical Backpack + Supplies", "misc", "", 0.45, "'UK3CB_B_Alice_Med_K' execVM 'scripts\makePlayerMedic.sqf'"], 
	["Radio", "item", [civRadio], 0.25], 
	["Perk: Translator", "misc", "", 0.4, "['en', 'pa'] call acre_api_fnc_babelSetSpokenLanguages"]
];

opforShopList = [
	["Mosin", "weapon", ["rhs_weap_m38"], 0.15], 
	["Lee Enfield", "weapon", ["UK3CB_Enfield"], 0.2],
	["M1 Garand", "weapon", ["rhs_weap_m1garand_sa43"], 0.25], 
	["AK-47", "weapon", ["uk3cb_ak47"], 0.3], 
	["AKM", "weapon", ["rhs_weap_akm"], 0.35], 
	["SKS", "weapon", ["uk3cb_sks_01_sling"], 0.37], 
	["Browning HP", "weapon", ["UK3CB_BHP"], 0.08],
	["PKM", "weapon", ["rhs_weap_pkm", 1], 0.68], 
	["RPK", "weapon", ["UK3CB_RPK", 1, "rhs_75Rnd_762x39mm"], 0.65], 
	["PPsh41", "weapon", ["uk3cb_ppsh41", 2], 0.55], 
	["MG3", "weapon", ["UK3CB_MG3", 2], 0.75],
	["SVD", "weapon", ["UK3CB_SVD_OLD"], 0.75], 
	["VSS", "weapon", ["rhs_weap_vss"], 0.7], 
	["AKM (GP-25)", "weapon", ["rhs_weap_akm_gp25", 3, "rhs_30Rnd_762x39mm"], 0.52, "player addWeaponItem ['rhs_weap_akm_gp25', 'rhs_VOG25', true]"], 
	["Škorpion", "weapon", ["rhs_weap_savz61"], 0.25], 
	["RPG-26", "weapon", ["rhs_weap_rpg26", 0], 0.45], 
	["RPG-7V2", "weapon", ["rhs_weap_rpg7", 2, "rhs_rpg7_PG7VL_mag"], 0.65], 
	["FAK", "item", ["FirstAidKit"], 0.05], 
	["VOG25 Grenade Shell", "item", ["rhs_VOG25"], 0.05], 
	["PSO-1M2 Scope", "item", ["rhs_acc_pso1m2"], 0.1], 
	["RGD-5 Grenade", "item", ["rhs_mag_rgd5"],0.05], 
	["RDG-2 Smoke Grenade (White)", "item", ["rhs_mag_rdg2_white"], 0.03], 
	["Heavy Ballistic Vest", "equipment", ["UK3CB_TKA_B_V_GA_LITE_TAN", "vest"], 0.25], 
	["Light Ballistic Vest", "equipment", ["UK3CB_TKA_B_V_TacVest_Tan", "vest"], 0.1], 
	["Face Mask", "equipment", ["UK3CB_G_Face_Wrap_01", "goggles"], 0.01], 
	["Carryall Backpack", "equipment", ["B_Carryall_khk", "backpack"], 0.15], 
	["Large IED", "item", ["IEDUrbanBig_Remote_Mag"], 0.57], 
	["Small IED", "item", ["IEDLandSmall_Remote_Mag"], 0.4], 
	["Cellphone Detonator", "item", ["ACE_Cellphone"], 0.06], 
	["Dead Men's Switch", "item", ["ACE_DeadManSwitch"], 0.21]
];

{ { _x set [3, ( [((_x select 3) * karmaMax), _mult] call occupation_fnc_getPrice)] } forEach _x } forEach [bluforShopList, civShopList, opforShopList];

